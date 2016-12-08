# Delete Item

> **Note:** Table names are case-sensitive

> **Note:** To perform a Soft-delete directly, use the update endpoint and update the `active` column.

<span class="request">`DELETE` **/api/1.1/tables/_table-name_/rows/_row-id_**</span>

<span class="description">Delete (or soft-delete) an item within a specific table</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _String_ | <span class="required">Required</span> | The table that contains the item you wish to delete
**id** _Integer_ | <span class="required">Required</span> | The `id` of the item you wish to delete

### Example Request

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
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**success**</span> _Boolean_ | Whether the deletion was successful or not

### Example Response

```json
{
  "meta": {
    "table": "projects"
  },
  "success": true
}
```
