# Get File

<span class="request">`GET` **/api/2.0/files/_[id]_**</span>

<span class="description">Get a file information</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/files/1 \
  -u [user-token]:
```

```php
$file = $client->getFile(1);
```

```javascript
const file = client.getFile(1);
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
    "filename": "2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "title": "My File Name",
    "description": null,
    "location": null,
    "tags": null,
    "width": 594,
    "height": 447,
    "filesize": 52155,
    "duration": null,
    "metadata": null,
    "type": "image/jpeg",
    "charset": "binary",
    "embed": null,
    "folder": null,
    "upload_user": 1,
    "upload_date": "2018-02-01T11:29:49-05:00",
    "storage_adapter": "local",
    "url": "/storage/uploads/2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "thumbnail_url": "/storage/uploads/thumbs/2.jpg",
    "html": null
  }
}
```
