# Update Item

> **Note:** Table names are case-sensitive

<span class="request">`PATCH` **/api/1.1/tables/[table-name]/rows/[row-id]**</span>
<span class="description">Update an item in the given table with the specified ID.</span>
<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _String_ | <span class="required">Required</span> | The table name within which the record will be updated. The custom column arguments below must match this table's schema.
**id** _Integer_ | <span class="required">Required</span> | The item id within the table.
<span class="custom">**Custom Data**</span> _Array_ | <span class="required">Required</span> | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

## Example Request

```bash
$ curl --data "title=Benjamin School for gifted children Website" \
        https://instance--key.directus.io/api/1/tables/projects/rows/1 \
                -u [user-token]:
```

```php
$updatedProject = $client->updateItem('projects', 1, [
  'title' => 'Benjamin School for gifted children Website'
]);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**Custom Data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

```json
{
  "meta": {
    "type": "item",
    "table": "projects"
  },
  "data": {
    "id": 1,
    "active": 1,
    "title": "Benjamin School for gifted children Website"
  }
}
```
