# List Files

<span class="request">`GET` **/api/2.0/files**</span>

<span class="description">Returns a list of files</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**Items Parameters Object**         | | The file information. See the [**Items Parameters Object**](/overview/items-parameters.md)

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/files \
  -u [user-token]:
```

```php
$files = $client->getFileList();
```

```javascript
const files = client.getFileList();
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _File Object_ Collection | <span class="custom">This data and its architecture is based on the Directus file schema and can be extended with additional custom columns</span> [**File Object**: View Nested Attributes](/overview/objects-model.md#file-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_files",
    "type": "collection",
    "result_count": 1
  },
  "data": [{
    "id": 2,
    "name": "2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "url": "/storage/uploads/2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "title": "My New File Name",
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
  }]
}
```