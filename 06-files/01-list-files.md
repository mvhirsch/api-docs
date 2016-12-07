# Get Files

<span class="request">`GET` **/api/1.1/files**</span>

<span class="description">Get all the files entries</span>

<span class="arguments">Name</span> | Value | Description
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for for the items
**orders[field]** _String_  |  <span class="default">Default **ASC**</span> |  Order to be sorted. Available options are: `ASC` (Ascending) or `DESC` (Descending).
**status**  _String_ |  <span class="default">Default **None**</span> | List of status values to be included. Separated by commas. `1,2`
**columns** _String_  |  <span class="default">Optional</span>  |  The columns to be shown on the result. Columns are separated by comma. `columns=id,title,published_date`
**in[field]**  _String_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`
**ids** _String_  |  <span class="default">Optional</span>  |  Only list records that its `field` matches one of given value. Can be separated by commas. `ids=1,2`. Same as `in[id]=1,2`.
**filters** | <span class="default">Optional</span> | Use `Filter Object` to filter the result.

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/files \
  -u [user-token]:
```

```php
$files = $client->getFiles();
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
**Columns Data** _Collection of File Object_ | <span class="custom">This data and its architecture is based on the Directus file schema and can be extended with additional custom columns</span>

### Example Response

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
