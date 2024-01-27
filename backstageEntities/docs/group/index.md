# group

backstageEntities.group

## Subpackages

* [metadata.links](metadata/links.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion(value="backstage.io/v1beta1")`](#fn-withapiversion)
* [`fn withChildren(value)`](#fn-withchildren)
* [`fn withChildrenMixin(value)`](#fn-withchildrenmixin)
* [`fn withKind(value="Group")`](#fn-withkind)
* [`fn withMembers(value)`](#fn-withmembers)
* [`fn withMembersMixin(value)`](#fn-withmembersmixin)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withParent(value)`](#fn-withparent)
* [`fn withProfile(value)`](#fn-withprofile)
* [`fn withProfileMixin(value)`](#fn-withprofilemixin)
* [`fn withRelations(value)`](#fn-withrelations)
* [`fn withRelationsMixin(value)`](#fn-withrelationsmixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withStatusMixin(value)`](#fn-withstatusmixin)
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
* [`obj profile`](#obj-profile)
  * [`fn withDisplayName(value)`](#fn-profilewithdisplayname)
  * [`fn withEmail(value)`](#fn-profilewithemail)
  * [`fn withPicture(value)`](#fn-profilewithpicture)

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
### fn withChildren

```jsonnet
withChildren(value)
```

PARAMETERS:

* **value** (`array`)

The immediate child groups of this group in the hierarchy (whose parent field points to this group). The list must be present, but may be empty if there are no child groups. The items are not guaranteed to be ordered in any particular way. The entries of this array are entity references.
### fn withChildrenMixin

```jsonnet
withChildrenMixin(value)
```

PARAMETERS:

* **value** (`array`)

The immediate child groups of this group in the hierarchy (whose parent field points to this group). The list must be present, but may be empty if there are no child groups. The items are not guaranteed to be ordered in any particular way. The entries of this array are entity references.
### fn withKind

```jsonnet
withKind(value="Group")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Group"`
   - valid values: `"Group"`

The high level entity type being described.
### fn withMembers

```jsonnet
withMembers(value)
```

PARAMETERS:

* **value** (`array`)

The users that are members of this group. The entries of this array are entity references.
### fn withMembersMixin

```jsonnet
withMembersMixin(value)
```

PARAMETERS:

* **value** (`array`)

The users that are members of this group. The entries of this array are entity references.
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
### fn withParent

```jsonnet
withParent(value)
```

PARAMETERS:

* **value** (`string`)

The immediate parent group in the hierarchy, if any. Not all groups must have a parent; the catalog supports multi-root hierarchies. Groups may however not have more than one parent. This field is an entity reference.
### fn withProfile

```jsonnet
withProfile(value)
```

PARAMETERS:

* **value** (`object`)

Optional profile information about the group, mainly for display purposes. All fields of this structure are also optional. The email would be a group email of some form, that the group may wish to be used for contacting them. The picture is expected to be a URL pointing to an image that's representative of the group, and that a browser could fetch and render on a group page or similar.
### fn withProfileMixin

```jsonnet
withProfileMixin(value)
```

PARAMETERS:

* **value** (`object`)

Optional profile information about the group, mainly for display purposes. All fields of this structure are also optional. The email would be a group email of some form, that the group may wish to be used for contacting them. The picture is expected to be a URL pointing to an image that's representative of the group, and that a browser could fetch and render on a group page or similar.
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
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

The type of group. There is currently no enforced set of values for this field, so it is left up to the adopting organization to choose a nomenclature that matches their org hierarchy.
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
### obj profile


#### fn profile.withDisplayName

```jsonnet
profile.withDisplayName(value)
```

PARAMETERS:

* **value** (`string`)

A simple display name to present to users.
#### fn profile.withEmail

```jsonnet
profile.withEmail(value)
```

PARAMETERS:

* **value** (`string`)

An email where this entity can be reached.
#### fn profile.withPicture

```jsonnet
profile.withPicture(value)
```

PARAMETERS:

* **value** (`string`)

The URL of an image that represents this entity.