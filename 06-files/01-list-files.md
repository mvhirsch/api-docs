# Get Files

<span class="request">`GET` **/api/1.1/files**</span>
<span class="description">Get all the files entries.</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/files
```

```php
$files = $client->getFiles();
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
**Columns Data** _Collection of File Object_ | <span class="custom">This data and its architecture is based on Directus files's schema.</span>

```json
{
  "meta": {
    "table": "directus_files",
    "type": "collection",
    "Active": 1,
    "Delete": 0,
    "Draft": 0,
    "total": 1,
    "total_entries": 1
  },
  "data": [{
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
  }]
}
```
