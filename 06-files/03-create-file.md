# Create File

<span class="request">`POST` **/api/1.1/files**</span>
<span class="description">Add new file.</span>
<span class="arguments">Name</span> | Value | Description
--------|-----|------------
<span class="custom">**Files Data**</span> _File Object_ | | <span class="custom">This data and its architecture is based on Directus files's schema.</span>
**active** _Integer_            | | File's status. `1=active, 2=inactive, 3=deleted`.
**name** _String_               | | File name
**title** _String_              | | File's title
**location** _String_           | | Location of where the picture was taken. if any.
**type** _String_               | | File mime type
**url** _String_                | | File url relativity to Directus base url
**tags** _String_               | | Comma separated tags.
**caption** _String_            | | File caption (Description).
**width** _Integer_             | | File width.
**height** _Integer_            | | File height.
**size** _Integer_              | | File size in bytes.
**embed_id** _String_           | | ID of the embeded file. Ex Youtube ID
**user** _Integer_              | | File owner (who uploaded the file)
**date_uploaded** _String_      | | File uploaded date. **TODO** It should be an DateTime object.
**storage_adapter** _String_    | | Storage adapter used to upload the file

### Example Request

```php
$newFile = $client->createFile(new File([
  'path' => '/path/to/file.jpg',
  'title' => 'Logo'
]));
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
**Columns Data** _File Object_ | <span class="custom">This data and its architecture is based on Directus files's schema.</span>

```json
{
  "meta": {
    "table": "directus_files",
    "type": "item"
  },
  "data": {
    "id": 2,
    "active": 1,
    "name": "00000000002.jpg",
    "url": null,
    "title": "Logo",
    "location": "",
    "caption": "",
    "type": "image\/jpg",
    "charset": "binary",
    "tags": "",
    "width": 594,
    "height": 447,
    "size": 52155,
    "embed_id": null,
    "user": 1,
    "date_uploaded": "2013-11-15 04:30:52 UTC",
    "storage_adapter": "local"
  }
}
```
