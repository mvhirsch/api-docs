# Delete Item

> **Note:** Table names are case-sensitive

> **Note:** To perform a soft-delete, add `soft=1` as query parameter to the url. Only works if status interface column exists.

> **Note:** Directus System tables not allowed, use dedicated endpoints, otherwise an error is thrown. [See Items Error codes](/errors/items.md)

<span class="request">`DELETE` **/api/2.0/items/_[table-name]_/_[item-id]_**</span>

<span class="description">Delete (or soft-delete) an item within a specific table</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table-name** _String_ | <span class="required">Required</span> | The table that contains the item you wish to delete
**item-id** _Integer_ | <span class="required">Required</span> | The `id` of the item you wish to delete

### Example Request

```bash
$ curl -X DELETE \
        https://instance--key.directus.io/api/2.0/items/projects/1 \
                -u [user-token]:
```

```php
$client->deleteItem('projects', 1);
```

```javascript
client.deleteItem('projects', 1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
<span class="custom">**error**</span> _Object_ | Failed performing the delete action. [**Error Object**: View Nested Attributes](/overview/objects-model.md#error-object)

### Example Response (Success)

```json
{
  
}
```

### Example Response (Failure)

```json
{
  "error": {
    "code": 1,
    "message": "item_not_found"
  }
}
```
