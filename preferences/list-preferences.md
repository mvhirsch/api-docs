# Get Activities

<span class="request">`GET` **/api/2.0/activities**</span>

<span class="description">Get all the activity records within Directus</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**Items Parameters Object**         |   | See the [**Items Parameters Object**](/overview/items-parameters.md)

### Example Request

```bash
$ curl -g https://instance--key.directus.io/api/2.0/preferences?filter[table_name]=projects \
  -u [user-token]:
```

```php
$preferences = $client->getPreferences([
  'filter' => [
    'table_name' => projects
  ]
]);
```

```javascript
const preferences = client.getPreferences({
  filter: {
    table_name: 'projects'
  }
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Preference Object Collection_ | <span class="custom">This data and its architecture is based on Directus activity's schema</span> [**Preference Object**: View Nested Attributes](/overview/objects-model.md#preference-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_activity",
    "type": "collection",
    "result_count": 1
  },
  "data": [{
    "id": 1,
    "user": 1,
    "table_name": "projects",
    "title": null,
    "visible_fields": "title",
    "sort": "id",
    "status": null,
    "search_string": null,
    "list_view_options": null
  }]
}
```
