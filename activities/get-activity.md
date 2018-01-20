# Get an activity information

<span class="request">`GET` **/api/2.0/activities/_[id]_**</span>

<span class="description">Get information about an activity</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "user.name" and user.* for all fields in user related field) 
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl -g https://instance--key.directus.io/api/2.0/activities/1 \
  -u [user-token]:
```

```php
$activity = $client->getActivity(1);
```

```javascript
const activity = client.getActivity(1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Activity Object_ | <span class="custom">This data and its architecture is based on Directus activity's schema</span> [**Activity Object**: View Nested Attributes](/overview/objects-model.md#activity-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_activity",
    "type": "collection",
    "total": 2
  },
  "data": {
    "id": 1,
    "identifier": "School Website",
    "action": "ADD",
    "table_name": "projects",
    "row_id": 5,
    "user": 1,
    "datetime": "2016-12-06T09:46:40-05:00",
    "type": "ENTRY",
    "data": "<json-data-used>"
  }
}
```
