# component

backstageEntities.component

## Subpackages

* [metadata.links](metadata/links.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion(value="backstage.io/v1beta1")`](#fn-withapiversion)
* [`fn withConsumesApis(value)`](#fn-withconsumesapis)
* [`fn withConsumesApisMixin(value)`](#fn-withconsumesapismixin)
* [`fn withDependsOn(value)`](#fn-withdependson)
* [`fn withDependsOnMixin(value)`](#fn-withdependsonmixin)
* [`fn withKind(value="Component")`](#fn-withkind)
* [`fn withLifecycle(value)`](#fn-withlifecycle)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withOwner(value)`](#fn-withowner)
* [`fn withProvidesApis(value)`](#fn-withprovidesapis)
* [`fn withProvidesApisMixin(value)`](#fn-withprovidesapismixin)
* [`fn withRelations(value)`](#fn-withrelations)
* [`fn withRelationsMixin(value)`](#fn-withrelationsmixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withStatusMixin(value)`](#fn-withstatusmixin)
* [`fn withSubcomponentOf(value)`](#fn-withsubcomponentof)
* [`fn withSystem(value)`](#fn-withsystem)
* [`fn withType(value)`](#fn-withtype)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(value)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(value)`](#fn-metadatawithannotationsmixin)
  * [`fn withDescription(value)`](#fn-metadatawithdescription)
  * [`fn withEtag(value)`](#fn-metadatawithetag)
  * [`fn withLabels(value)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(value)`](#fn-metadatawithlabelsmixin)
  * [`fn withLinks(value)`](#fn-metadatawithlinks)
  * [`fn withLinksMixin(value)`](#fn-metadatawithlinksmixin)
  * [`fn withName(value)`](#fn-metadatawithname)
  * [`fn withNamespace(value="default")`](#fn-metadatawithnamespace)
  * [`fn withTags(value)`](#fn-metadatawithtags)
  * [`fn withTagsMixin(value)`](#fn-metadatawithtagsmixin)
  * [`fn withTitle(value)`](#fn-metadatawithtitle)
  * [`fn withUid(value)`](#fn-metadatawithuid)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` constructs a new object with a Kind, ApiVersion and name set.
### fn withApiVersion

```jsonnet
withApiVersion(value="backstage.io/v1beta1")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"backstage.io/v1beta1"`
   - valid values: `"backstage.io/v1alpha1"`, `"backstage.io/v1beta1"`

The version of specification format for this particular entity that this is written against.
### fn withConsumesApis

```jsonnet
withConsumesApis(value)
```

PARAMETERS:

* **value** (`array`)

An array of entity references to the APIs that are consumed by the component.
### fn withConsumesApisMixin

```jsonnet
withConsumesApisMixin(value)
```

PARAMETERS:

* **value** (`array`)

An array of entity references to the APIs that are consumed by the component.
### fn withDependsOn

```jsonnet
withDependsOn(value)
```

PARAMETERS:

* **value** (`array`)

An array of references to other entities that the component depends on to function.
### fn withDependsOnMixin

```jsonnet
withDependsOnMixin(value)
```

PARAMETERS:

* **value** (`array`)

An array of references to other entities that the component depends on to function.
### fn withKind

```jsonnet
withKind(value="Component")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Component"`
   - valid values: `"Component"`

The high level entity type being described.
### fn withLifecycle

```jsonnet
withLifecycle(value)
```

PARAMETERS:

* **value** (`string`)

The lifecycle state of the component.
### fn withMetadata

```jsonnet
withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

Metadata fields common to all versions/kinds of entity.
### fn withMetadataMixin

```jsonnet
withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

Metadata fields common to all versions/kinds of entity.
### fn withOwner

```jsonnet
withOwner(value)
```

PARAMETERS:

* **value** (`string`)

An entity reference to the owner of the component.
### fn withProvidesApis

```jsonnet
withProvidesApis(value)
```

PARAMETERS:

* **value** (`array`)

An array of entity references to the APIs that are provided by the component.
### fn withProvidesApisMixin

```jsonnet
withProvidesApisMixin(value)
```

PARAMETERS:

* **value** (`array`)

An array of entity references to the APIs that are provided by the component.
### fn withRelations

```jsonnet
withRelations(value)
```

PARAMETERS:

* **value** (`array`)

The relations that this entity has with other entities.
### fn withRelationsMixin

```jsonnet
withRelationsMixin(value)
```

PARAMETERS:

* **value** (`array`)

The relations that this entity has with other entities.
### fn withSpec

```jsonnet
withSpec(value)
```

PARAMETERS:

* **value** (`object`)

The specification data describing the entity itself.
### fn withSpecMixin

```jsonnet
withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)

The specification data describing the entity itself.
### fn withStatus

```jsonnet
withStatus(value)
```

PARAMETERS:

* **value** (`object`)

Common definitions to import from other schemas
### fn withStatusMixin

```jsonnet
withStatusMixin(value)
```

PARAMETERS:

* **value** (`object`)

Common definitions to import from other schemas
### fn withSubcomponentOf

```jsonnet
withSubcomponentOf(value)
```

PARAMETERS:

* **value** (`string`)

An entity reference to another component of which the component is a part.
### fn withSystem

```jsonnet
withSystem(value)
```

PARAMETERS:

* **value** (`string`)

An entity reference to the system that the component belongs to.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

The type of component.
### obj metadata


#### fn metadata.withAnnotations

```jsonnet
metadata.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Key/value pairs of non-identifying auxiliary information attached to the entity.
#### fn metadata.withAnnotationsMixin

```jsonnet
metadata.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Key/value pairs of non-identifying auxiliary information attached to the entity.
#### fn metadata.withDescription

```jsonnet
metadata.withDescription(value)
```

PARAMETERS:

* **value** (`string`)

A short (typically relatively few words, on one line) description of the entity.
#### fn metadata.withEtag

```jsonnet
metadata.withEtag(value)
```

PARAMETERS:

* **value** (`string`)

An opaque string that changes for each update operation to any part of the entity, including metadata. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, and the server will then reject the operation if it does not match the current stored value.
#### fn metadata.withLabels

```jsonnet
metadata.withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Key/value pairs of identifying information attached to the entity.
#### fn metadata.withLabelsMixin

```jsonnet
metadata.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Key/value pairs of identifying information attached to the entity.
#### fn metadata.withLinks

```jsonnet
metadata.withLinks(value)
```

PARAMETERS:

* **value** (`array`)

A list of external hyperlinks related to the entity. Links can provide additional contextual information that may be located outside of Backstage itself. For example, an admin dashboard or external CMS page.
#### fn metadata.withLinksMixin

```jsonnet
metadata.withLinksMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of external hyperlinks related to the entity. Links can provide additional contextual information that may be located outside of Backstage itself. For example, an admin dashboard or external CMS page.
#### fn metadata.withName

```jsonnet
metadata.withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the entity. Must be unique within the catalog at any given point in time, for any given namespace + kind pair.
#### fn metadata.withNamespace

```jsonnet
metadata.withNamespace(value="default")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"default"`

The namespace that the entity belongs to.
#### fn metadata.withTags

```jsonnet
metadata.withTags(value)
```

PARAMETERS:

* **value** (`array`)

A list of single-valued strings, to for example classify catalog entities in various ways.
#### fn metadata.withTagsMixin

```jsonnet
metadata.withTagsMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of single-valued strings, to for example classify catalog entities in various ways.
#### fn metadata.withTitle

```jsonnet
metadata.withTitle(value)
```

PARAMETERS:

* **value** (`string`)

A display name of the entity, to be presented in user interfaces instead of the name property, when available.
#### fn metadata.withUid

```jsonnet
metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

A globally unique ID for the entity. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, but the server is free to reject requests that do so in such a way that it breaks semantics.