# Update Collection

> **Note:** Collection names are case-sensitive

<span class="request">`PATCH` **/api/2.0/collections/_[name]_**</span>

<span class="description">Updates a collection</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ---------------------------------------- | -------------------
**Collection Object**         | <span class="required">Required</span> | The permission information. See the [**Collection Object**](/overview/objects-model.md#collection-object)

### Example Request

```bash
$ curl  -H "Content-Type: application/json" \
          -d '{
                  "preview_url": "http://localhost/project/{{name}}",
                  "fields": [
                      {
                          "name": "title",
                          "length": 128
                      }
                  ]
              }' \
            https://instance--key.directus.io/api/2.0/collections/projects \
          -u [user-token]:
```

```php
$collection = $client->updateCollection('projects', [
    'preview_url' => 'http://localhost/project/{{name}}',
    'fields' => [
        [
            'name' => 'title',
            'length' => 128
        ]
    ]
]);
```

```javascript
const collection = client.updateCollection('projects', {
   preview_url: 'http://localhost/project/{{name}}',
   fields: [
       {
           name: 'title',
           length: 128
       }
   ]
});
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
<span class="custom">**data**</span> _Collection Object_ | <span class="custom">This data and its architecture is based on Directus table schema</span> [**Collection Object**: View Nested Attributes](/overview/objects-model.md#collection-object)

### Example Response

```json
{
  "meta": {
    "type": "item",
    "table": "directus_tables"
  },
  "data": {
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
        "length": 128,
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
    "preview_url": "http://localhost/project/{{name}}",
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
  }
}
```
