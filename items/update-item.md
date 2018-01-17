# Update Item

> **Note:** Table names are case-sensitive

> **Note:** Directus System tables not allowed, use dedicated endpoints, otherwise an error is thrown. [See Items Error codes](/errors/items.md)

<span class="request">`PUT` **/api/2.0/items/_[table-name]_/_[item-id]_**</span>

<span class="description">Update an item within a specific table</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table-name** _String_ | <span class="required">Required</span> | The table that contains the item you wish to update
**item-id** _Integer_ | <span class="required">Required</span> | The `id` of the item you wish to update
<span class="custom">**Custom Data**</span> _Array_ | <span class="required">Required</span> | <span class="custom">This data and its architecture is based on your specific project's schema</span>

### Example Request

```bash
$ curl -X PATCH --data "title="Directus Web Application" \
        https://instance--key.directus.io/api/2.0/items/projects/1 \
                -u [user-token]:
```

```php
$updatedProject = $client->updateItem('projects', 1, [
  'title' => 'Directus Web Application'
]);
```

```javascript
const updatedProject = client.updateItem('projects', 1, {
  title: 'Directus Web Application'
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema</span>

### Example Response

```json
{
  "meta": {
    "type": "item",
    "table": "projects"
  },
  "data": {
    "id": 1,
    "status": 1,
    "title": "Directus Web Application"
  }
}
```
