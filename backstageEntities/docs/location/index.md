# location

backstageEntities.location

## Subpackages

* [metadata.links](metadata/links.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion(value="backstage.io/v1beta1")`](#fn-withapiversion)
* [`fn withKind(value="Location")`](#fn-withkind)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withPresence(value="required")`](#fn-withpresence)
* [`fn withRelations(value)`](#fn-withrelations)
* [`fn withRelationsMixin(value)`](#fn-withrelationsmixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withStatusMixin(value)`](#fn-withstatusmixin)
* [`fn withTarget(value)`](#fn-withtarget)
* [`fn withTargets(value)`](#fn-withtargets)
* [`fn withTargetsMixin(value)`](#fn-withtargetsmixin)
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
### fn withKind

```jsonnet
withKind(value="Location")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Location"`
   - valid values: `"Location"`

The high level entity type being described.
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
### fn withPresence

```jsonnet
withPresence(value="required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"required"`
   - valid values: `"required"`, `"optional"`

Whether the presence of the location target is required and it should be considered an error if it can not be found
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
### fn withTarget

```jsonnet
withTarget(value)
```

PARAMETERS:

* **value** (`string`)

A single target as a string. Can be either an absolute path/URL (depending on the type), or a relative path such as ./details/catalog-info.yaml which is resolved relative to the location of this Location entity itself.
### fn withTargets

```jsonnet
withTargets(value)
```

PARAMETERS:

* **value** (`array`)

A list of targets as strings. They can all be either absolute paths/URLs (depending on the type), or relative paths such as ./details/catalog-info.yaml which are resolved relative to the location of this Location entity itself.
### fn withTargetsMixin

```jsonnet
withTargetsMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of targets as strings. They can all be either absolute paths/URLs (depending on the type), or relative paths such as ./details/catalog-info.yaml which are resolved relative to the location of this Location entity itself.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

The single location type, that's common to the targets specified in the spec. If it is left out, it is inherited from the location type that originally read the entity data.
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