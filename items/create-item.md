# Create Item

> **Note:** Table names are case-sensitive

> **Note:** These arguments and attributes are based on the table's custom columns

> **Note:** Directus System tables not allowed, use dedicated endpoints, otherwise an error is thrown. [See Items Error codes](/errors/items.md)

<span class="request">`POST` **/api/2.0/items/_[table-name]_**</span>

<span class="description">Create a new item to the given table</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _String_ | <span class="required">Required</span> | The table within which the item will be added
<span class="custom">**data**</span> _Array_ | | <span class="custom">This data and its architecture is based on your specific project's schema</span>

### Example Request

```bash
$ curl --data "status=1&title=Directus+API" \
        https://instance--key.directus.io/api/2.0/items/projects \
                -u [user-token]:
```

```php
$newProject = $client->createItem('projects', [
    'status' => 1,
    'title' =>  'Directus API'
]);
```

```javascript
const newProject = client.createItem('projects', {
  status: 1,
  title: 'Directus API'
});
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
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
    "title": "Directus API"
  }
}
```
