# Get Items

> **Note:** Table names are case-sensitive

> **Note:** These arguments and attributes are based on the table's custom columns

> **Note:** Directus System tables not allowed, use dedicated endpoints, otherwise an error is thrown. [See Items Error codes](/errors/items.md)

<span class="request">`GET` **/api/2.0/items/_[table-name]_**</span>

<span class="description">Retrieve a collection of items within a specific table based on the current user's privileges</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "user.name" and user.* for all fields in user related field)
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The maximum number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for the items
**sort**  _String_ |  <span class="default">Default **0**</span>  |  CSV of fields to sort by. (Ex: `sort=name`: sort by name ascending , `sort=-name` sort by name descending , `sort=?`: sort randomly) 
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields
**id** _String_  |  <span class="default">Optional</span>  |  Only list records that its `primary key` matches one of given value. Can be separated by commas `id=1,2`. Same as `filter[id][in]=1,2`
**filter** | <span class="default">Optional</span> | Use [**Filter Object**](/overview/filters.md) to filter the result.

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/items/projects \
        -u [user-token]:
```

```php
$projects = $client->getItems('projects');
```

```javascript
const projects = client.getItems('projects');
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema</span>

### Example Response

```json
{
  "data": [
    {
      "id": 1,
      "title": "Directus API"
    },
    {
      "id": 2,
      "title": "Directus Web Application"
    }
  ]
}
```
