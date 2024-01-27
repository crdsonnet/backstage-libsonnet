local j = import './vendor/github.com/Duologic/jsonnet-libsonnet/main.libsonnet';
local jutils = import './vendor/github.com/Duologic/jsonnet-libsonnet/utils.libsonnet';
local helpers = import './vendor/github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import './vendor/github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local fixRef(x) =
  if '$ref' in x
  then x + { '$ref': '//' + super['$ref'] }
  else x;

local fixId =
  { '$id': '//' + super['$id'] };

local sanitizeKind =
  fixId + {
    local kind = super.allOf[1].properties.kind.enum[0],
    _kindName: helpers.camelCaseKind(kind),
    type: 'object',
    allOf:
      std.map(
        fixRef,
        super.allOf
      ),
  };

local sanitizeEntity =
  fixId + {
    properties+: {
      metadata: fixRef(super.metadata),
      status: fixRef(super.status),
      relations+: {
        items: fixRef(super.items),
      },
    },
  };


local schemas = [
  (import 'github.com/backstage/backstage/packages/catalog-model/src/schema/Entity.schema.json') + sanitizeEntity,
  (import 'github.com/backstage/backstage/packages/catalog-model/src/schema/EntityMeta.schema.json') + fixId,
  (import 'github.com/backstage/backstage/packages/catalog-model/src/schema/EntityEnvelope.schema.json') + fixId,
  (import 'github.com/backstage/backstage/packages/catalog-model/src/schema/shared/common.schema.json') + fixId,
];

local kindSchemas =
  local imports = [
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/Component.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/User.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/Group.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/Domain.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/Location.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/Resource.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/System.v1alpha1.schema.json',
    import 'github.com/backstage/backstage/packages/catalog-model/src/schema/kinds/API.v1alpha1.schema.json',
  ];
  [s + sanitizeKind for s in imports];

local schemaDB = {
  [schema['$id']]: schema
  for schema in (schemas + kindSchemas)
};

local processor =
  crdsonnet.processor.new()
  + crdsonnet.processor.withRenderEngineType('ast')
  + crdsonnet.processor.withSchemaDB(schemaDB)
  + {
    parse(name, schema):
      super.parse(name, schema)
      + {
        [name]+: {
          local apiVersionEnum = super.allOf[1].properties.apiVersion.enum,
          local kindEnum = super.allOf[1].properties.kind.enum,
          allOf:
            std.map(
              function(x)
                x + { properties+: {
                  apiVersion+: {
                    default: apiVersionEnum[std.length(apiVersionEnum) - 1],
                    enum: apiVersionEnum,
                  },
                  kind+: {
                    default: kindEnum[0],
                    enum: kindEnum,
                  },
                } },
              super.allOf
            ),
        },
      },

    render(name, schema):
      jutils.get(
        super.render(name, schema),
        name,
        default=error 'field %s not found in ast' % name
      ).expr,
  };

local addNewFunction(astObject) =
  j.object.members(
    [
      j.field.field(
        j.fieldname.string('#new'),
        j.literal(
          d.func.new(
            '`new` constructs a new object with a Kind, ApiVersion and name set.',
            [d.arg('name', d.T.string)]
          )
        ),
        nobreak=true,
      ),
      j.field.func(
        j.fieldname.string('new'),
        j.binary('+', [
          j.functioncall(
            j.fieldaccess([j['self']], j.id('withKind')),
          ),
          j.functioncall(
            j.fieldaccess([j['self']], j.id('withApiVersion')),
          ),
          j.functioncall(
            j.fieldaccess([j['self'], j.id('metadata')], j.id('withName')),
            [j.id('name')],
          ),
        ]),
        [
          j.param.id('name'),
        ],
      ),
    ]
    + astObject.members
  );

local makeSubPackage(astObject, name) =
  j.object.members(
    [
      j.field.field(
        j.fieldname.string('#'),
        j.literal(  // render docsonnet as literal to avoid docsonnet dependency
          d.package.newSub(
            name,
            'backstageEntities.%(name)s' % { name: name }
          ),
        ),
        nobreak=true,
      ),
    ]
    + astObject.members
  );

{
  [schema._kindName + '.libsonnet']:
    local ast = crdsonnet.schema.render(
      schema._kindName,
      schema,
      processor
    );
    local withNewFunction = addNewFunction(ast);
    local subPackage = makeSubPackage(withNewFunction, schema._kindName);

    subPackage.toString(break='\n')
  for schema in kindSchemas
}
+ {
  'main.libsonnet':
    j.object.members(
      [
        j.field.field(
          j.fieldname.string('#'),
          {
            toString(indent='', break=''):
              std.manifestJsonEx(
                d.package.new(
                  'backstageEntities',
                  'github.com/crdsonnet/backstage-libsonnet/backstageEntities',
                  'Jsonnet library for rendering Backstage resources',
                  'main.libsonnet',
                  'main',
                )
                , '  ', '\n'
              ),
          },
          nobreak=true,
        ),
      ]
      + [
        j.field.field(
          j.fieldname.string(schema._kindName),
          j.importF('./' + schema._kindName + '.libsonnet'),
          nobreak=true,
        )
        for schema in kindSchemas
      ]
    ).toString(break='\n'),
}
