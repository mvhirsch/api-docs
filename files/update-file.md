# Update File

<span class="request">`PATCH` **/api/1.1/files/_[id]_**</span>

<span class="description">Update a file information</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**File Object**         | <span class="required">Required</span> | The file information. See the [**File Object**](/overview/objects-model.md#permission-object)

### Example Request

```bash
$ curl -X PATCH --data "title=My+New+File+Name" \
        https://instance--key.directus.io/api/2.0/files/1 \
                -u [user-token]:
```

```php
$file = $client->updateFile(1, [
  'title' => 'My New File Name'
]);
```

```javascript
const file = client.updateFile(1, {
  title: 'My New File Name'
});
```

### Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _File Object_ | <span class="custom">This data and its architecture is based on the Directus file schema and can be extended with additional custom columns</span> [**File Object**: View Nested Attributes](/overview/objects-model.md#file-object)

```json
{
  "meta": {
    "table": "directus_files",
    "type": "item"
  },
  "data": {
    "id": 2,
    "filename": "2a05d2300cf0a8bf1a3f6567366affed.jpg",
    "title": "My New File Name",
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
