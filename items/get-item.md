# Get Item

> **Note:** Table names are case-sensitive

> **Note:** Directus System tables not allowed, use dedicated endpoints, otherwise an error is thrown. [See Items Error codes](/errors/items.md)

<span class="request">`GET` **/api/2.0/items/_[table-name]_/_[item-id]_**</span>

<span class="description">Get a item information</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "user.name" and user.* for all fields in user related field) 
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/items/projects/1 \
        -u [user-token]:
```

```php
$item = $client->getItem('projects', 1);
```

```javascript
const item = client.getItem('projects', 1);
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
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
    "title": "Directus API"
  }
}
```
