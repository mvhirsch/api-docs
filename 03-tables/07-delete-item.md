# Delete Item

> **Note:** Table names are case-sensitive
> **Note:** To perform a Soft-delete directly, use the update endpoint and update the `active` column.

<span class="request">`DELETE` **/api/1.1/tables/[table-name]/rows/[row-id]**</span>
<span class="description">Delete or Soft-delete a row in the given table with the specified ID.</span>
<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _String_ | <span class="required">Required</span> | The table name within which the record will be deleted.
**id** _Integer_ | <span class="required">Required</span> | The item id within the table.

```bash
$ curl -X DELETE \
        https://database.account.directus.io/api/1/tables/projects/rows/1 \
                -u [user-token]:
```

```php
$response = $client->deleteItem('projects', 1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**success**</span> _Boolean_ | Whether the deletion was successful or not.

```json
{
  "meta": {
    "table": "projects"
  },
  "success": true
}
```
