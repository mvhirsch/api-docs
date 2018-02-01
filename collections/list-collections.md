# List Collections

<span class="request">`GET` **/api/2.0/collections**</span>

<span class="description">Returns a collection information</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**Items Parameters Object**  | | The file information. See the [**Items Parameters Object**](/overview/items-parameters.md)

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/collections \
        -u [user-token]:
```

```php
$collections = $client->getCollectionList();
```

```javascript
const collections = client.getCollectionList();
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
<span class="custom">**data**</span> _Collection Object_ List | <span class="custom">This data and its architecture is based on Directus table schema</span> [**Collection Object**: View Nested Attributes](/overview/objects-model.md#collection-object)

### Example Response

```json
{
  "data": [{
    "collection": "projects",
    "fields": [
      {
        "id": 1,
        "table_name": "projects",
        "column_name": "code",
        "type": "INT",
        "interface": "primary_key",
        "length": null,
        "precision": 10,
        "scale": 0,
        "sort": 1,
        "default_value": null,
        "nullable": null,
        "column_key": null,
        "key": "PRI",
        "extra": "auto_increment",
        "extra_options": [],
        "options": [],
        "required": true,
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      },
      {
        "id": 2,
        "table_name": "projects",
        "column_name": "stage",
        "type": "INT",
        "interface": "status",
        "length": null,
        "precision": 4,
        "scale": 0,
        "sort": 2,
        "default_value": 2,
        "nullable": null,
        "column_key": null,
        "extra_options": [],
        "options": [],
        "required": false,
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      },
      {
        "id": 3,
        "table_name": "projects",
        "column_name": "priority",
        "type": "INT",
        "interface": "sort",
        "length": null,
        "precision": 10,
        "scale": 0,
        "sort": 3,
        "default_value": null,
        "nullable": null,
        "column_key": null,
        "extra_options": [],
        "options": [],
        "required": false,
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      },
      {
        "id": 4,
        "table_name": "projects",
        "column_name": "title",
        "type": "VARCHAR",
        "interface": "text_input",
        "length": 255,
        "precision": 0,
        "scale": 0,
        "sort": 4,
        "default_value": null,
        "nullable": false,
        "column_key": null,
        "extra_options": [],
        "options": [],
        "required": true,
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      }
    ],
    "preview_url": null,
    "primary_column": "code",
    "schema": "directus",
    "hidden": false,
    "single": false,
    "default_status": null,
    "user_create_column": null,
    "user_update_column": null,
    "date_create_column": null,
    "date_update_column": null,
    "date_created": "2018-01-18 20:37:18",
    "comment": "",
    "row_count": 0,
    "list_view": null
  }]
}
```
