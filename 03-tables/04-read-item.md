# Get Item

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables/[table-name]/rows/[row-id]**</span>
<span class="description">Get the specified row id in the given table.</span>
<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _String_ | <span class="required">Required</span> | The table name within which the record will be updated. The custom column arguments below must match this table's schema.
**id** _Integer_ | <span class="required">Required</span> | The item id within the table.

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1/tables/projects/rows/1 \
        -u [user-token]:
```

```php
$item = $client->getItem('projects', 1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

```json
{
  "meta": {
    "type": "item",
    "table": "projects"
  },
  "data": {
    "id": 1,
    "title": "John's website"
  }
}
```
