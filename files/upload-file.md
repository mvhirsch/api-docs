# Upload File

<span class="request">`POST` **/api/2.0/files**</span>

<span class="description">Upload a new file</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**File Object**         | <span class="required">Required</span> | The file information. See the [**File Object**](/overview/objects-model.md#permission-object)

### Example Request

```bash
$ curl --data "title=My+File+Name&data=bm90aGluZyB0byBzZWUgaGVyZQ==" \
        https://instance--key.directus.io/api/2.0/files \
                -u [user-token]:
```

```php
$newFile = $client->uploadFile([
  'title' => 'My File Name',
  'data' => 'bm90aGluZyB0byBzZWUgaGVyZQ=='
]));
```

```javascript
const newFile = client.uploadFile({
  title: 'My File Name',
  data: 'bm90aGluZyB0byBzZWUgaGVyZQ==' // Base64 file content
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _File Object_ | <span class="custom">This data and its architecture is based on the Directus file schema and can be extended with additional custom columns</span> [**File Object**: View Nested Attributes](/overview/objects-model.md#file-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_files",
    "type": "item"
  },
  "data": {
    "id": 2,
    "name": "2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "url": "/storage/uploads/2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "title": "My File Name",
    "location": "",
    "caption": "",
    "type": "image\/jpg",
    "tags": "",
    "width": 594,
    "height": 447,
    "size": 52155,
    "embed_id": null,
    "user": 1,
    "date_uploaded": "2018-01-15 04:30:52 UTC",
    "storage_adapter": "local"
  }
}
```
