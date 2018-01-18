# Get a Preference Information

<span class="request">`GET` **/api/2.0/preferences/_[id]_**</span>

<span class="description">Get a preference information</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "user.name" and user.* for all fields in user related field) 
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/preferences/1 \
        -u [user-token]:
```

```php
$preference = $client->getPreference(1);
```

```javascript
const preference = client.getPreference(1);
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
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
