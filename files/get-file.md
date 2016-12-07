# Get File

<span class="request">`GET` **/api/1.1/files/[id]**</span>

<span class="description">Get information of the specified file</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**id** _Integer_ | <span class="required">Required</span> | The `id` of the file you wish to get

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/files/1 \
  -u [user-token]:
```

```php
$file = $client->getFile(1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
**Columns Data** _File Object_ | <span class="custom">This data and its architecture is based on the Directus file schema and can be extended with additional custom columns</span>

```json
{
  "meta": {
    "table": "directus_files",
    "type": "item"
  },
  "data": {
    "id": 1,
    "active": 1,
    "name": "00000000001.jpg",
    "url": null,
    "title": "Website screenshot",
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
