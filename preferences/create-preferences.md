# Create Bookmark

<span class="request">`POST` **/api/2.0/preferences**</span>

<span class="description">Create a new preference</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**Preference Object**         |   | See the [**Preference Object**](/overview/objects-model.md#preference-object) 

## Parameters
<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**meta** _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl --data "table_name=projects&sort=title" \
        https://instance--key.directus.io/api/2.0/preferences \
                -u [user-token]:
```

```php
$preference = $client->createPreference([
  'table_name' => 'projects',
  'sort' => 'title'
]);
```

```javascript
const preference = client.createPreference({
  table_name: 'projects',
  sort: 'title'
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Preference Object_ | <span class="custom">This data and its architecture is based on Directus preference's schema</span> [**Preference Object**: View Nested Attributes](/overview/objects-model.md#preference-object)

> **Note:** the metadata information is off by default. Read the metadata parameter in the [**Query Parameters Object**](/overview/objects-model.md#query-parameters-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_preferences",
    "type": "item"
  },
  "data": {
    "id": 1,
    "user": 1,
    "table_name": "projects",
    "title": null,
    "visible_fields": "title",
    "sort": "id",
    "status": null,
    "search_string": null,
    "list_view_options": null
  }
}
```
