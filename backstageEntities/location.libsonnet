{
  '#': { help: 'backstageEntities.location', name: 'location' },
  '#new': { 'function': { args: [{ default: null, enums: null, name: 'name', type: 'string' }], help: '`new` constructs a new object with a Kind, ApiVersion and name set.' } },
  new(name):
    self.withKind()
    + self.withApiVersion()
    + self.metadata.withName(name)
  ,
  '#withApiVersion': { 'function': { args: [{ default: 'backstage.io/v1beta1', enums: ['backstage.io/v1alpha1', 'backstage.io/v1beta1'], name: 'value', type: ['string'] }], help: 'The version of specification format for this particular entity that this is written against.' } },
  withApiVersion(value='backstage.io/v1beta1'): { apiVersion: value },
  '#withKind': { 'function': { args: [{ default: 'Location', enums: ['Location'], name: 'value', type: ['string'] }], help: 'The high level entity type being described.' } },
  withKind(value='Location'): { kind: value },
  '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata fields common to all versions/kinds of entity.' } },
  withMetadata(value): { metadata: value },
  '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata fields common to all versions/kinds of entity.' } },
  withMetadataMixin(value): { metadata+: value },
  metadata+:
    {
      '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key/value pairs of non-identifying auxiliary information attached to the entity.' } },
      withAnnotations(value): { metadata+: { annotations: value } },
      '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key/value pairs of non-identifying auxiliary information attached to the entity.' } },
      withAnnotationsMixin(value): { metadata+: { annotations+: value } },
      '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A short (typically relatively few words, on one line) description of the entity.' } },
      withDescription(value): { metadata+: { description: value } },
      '#withEtag': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'An opaque string that changes for each update operation to any part of the entity, including metadata. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, and the server will then reject the operation if it does not match the current stored value.' } },
      withEtag(value): { metadata+: { etag: value } },
      '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key/value pairs of identifying information attached to the entity.' } },
      withLabels(value): { metadata+: { labels: value } },
      '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key/value pairs of identifying information attached to the entity.' } },
      withLabelsMixin(value): { metadata+: { labels+: value } },
      '#withLinks': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of external hyperlinks related to the entity. Links can provide additional contextual information that may be located outside of Backstage itself. For example, an admin dashboard or external CMS page.' } },
      withLinks(value): { metadata+: { links: (if std.isArray(value)
                                               then value
                                               else [value]) } },
      '#withLinksMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of external hyperlinks related to the entity. Links can provide additional contextual information that may be located outside of Backstage itself. For example, an admin dashboard or external CMS page.' } },
      withLinksMixin(value): { metadata+: { links+: (if std.isArray(value)
                                                     then value
                                                     else [value]) } },
      links+:
        {
          '#': { help: '', name: 'links' },
          '#withIcon': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A key representing a visual icon to be displayed in the UI.' } },
          withIcon(value): { icon: value },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A user friendly display name for the link.' } },
          withTitle(value): { title: value },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'An optional value to categorize links into specific groups.' } },
          withType(value): { type: value },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A url in a standard uri format.' } },
          withUrl(value): { url: value },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The name of the entity. Must be unique within the catalog at any given point in time, for any given namespace + kind pair.' } },
      withName(value): { metadata+: { name: value } },
      '#withNamespace': { 'function': { args: [{ default: 'default', enums: null, name: 'value', type: ['string'] }], help: 'The namespace that the entity belongs to.' } },
      withNamespace(value='default'): { metadata+: { namespace: value } },
      '#withTags': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of single-valued strings, to for example classify catalog entities in various ways.' } },
      withTags(value): { metadata+: { tags: (if std.isArray(value)
                                             then value
                                             else [value]) } },
      '#withTagsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of single-valued strings, to for example classify catalog entities in various ways.' } },
      withTagsMixin(value): { metadata+: { tags+: (if std.isArray(value)
                                                   then value
                                                   else [value]) } },
      '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A display name of the entity, to be presented in user interfaces instead of the name property, when available.' } },
      withTitle(value): { metadata+: { title: value } },
      '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A globally unique ID for the entity. This field can not be set by the user at creation time, and the server will reject an attempt to do so. The field will be populated in read operations. The field can (optionally) be specified when performing update or delete operations, but the server is free to reject requests that do so in such a way that it breaks semantics.' } },
      withUid(value): { metadata+: { uid: value } },
    },
  '#withRelations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The relations that this entity has with other entities.' } },
  withRelations(value): { relations: (if std.isArray(value)
                                      then value
                                      else [value]) },
  '#withRelationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The relations that this entity has with other entities.' } },
  withRelationsMixin(value): { relations+: (if std.isArray(value)
                                            then value
                                            else [value]) },
  '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The specification data describing the entity itself.' } },
  withSpec(value): { spec: value },
  '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The specification data describing the entity itself.' } },
  withSpecMixin(value): { spec+: value },
  '#withStatus': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Common definitions to import from other schemas' } },
  withStatus(value): { status: value },
  '#withStatusMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Common definitions to import from other schemas' } },
  withStatusMixin(value): { status+: value },
  '#withPresence': { 'function': { args: [{ default: 'required', enums: ['required', 'optional'], name: 'value', type: ['string'] }], help: 'Whether the presence of the location target is required and it should be considered an error if it can not be found' } },
  withPresence(value='required'): { spec+: { presence: value } },
  '#withTarget': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A single target as a string. Can be either an absolute path/URL (depending on the type), or a relative path such as ./details/catalog-info.yaml which is resolved relative to the location of this Location entity itself.' } },
  withTarget(value): { spec+: { target: value } },
  '#withTargets': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of targets as strings. They can all be either absolute paths/URLs (depending on the type), or relative paths such as ./details/catalog-info.yaml which are resolved relative to the location of this Location entity itself.' } },
  withTargets(value): { spec+: { targets: (if std.isArray(value)
                                           then value
                                           else [value]) } },
  '#withTargetsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of targets as strings. They can all be either absolute paths/URLs (depending on the type), or relative paths such as ./details/catalog-info.yaml which are resolved relative to the location of this Location entity itself.' } },
  withTargetsMixin(value): { spec+: { targets+: (if std.isArray(value)
                                                 then value
                                                 else [value]) } },
  '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "The single location type, that's common to the targets specified in the spec. If it is left out, it is inherited from the location type that originally read the entity data." } },
  withType(value): { spec+: { type: value } },
}
