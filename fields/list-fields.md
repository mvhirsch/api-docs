# List Fields

> **Note:** Collection names are case-sensitive

<span class="request">`GET` **/api/2.0/fields/_[collection]_/_[field]_**</span>

<span class="description">Returns a collection's field information</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "fields.name" and fields.* for all fields in "fields" related field)
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/fields/projects \
        -u [user-token]:
```

```php
$field = $client->getFieldList('projects');
```

```javascript
const field = client.getFieldList('projects');
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Field Object_ | <span class="custom">This data and its architecture is based on Directus columns's schema</span> [**Field Object**: View Nested Attributes](/overview/objects-model.md#field-object)

### Example Response

```json
{
  "data": [
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
    }, {
      "id": 4,
      "collection": "projects",
      "name": "year",
      "type": "INT",
      "length": 4,
      "nullable": true,
      "comment": "Year built",
      "sort": 3,
      "system": false,
      "master": false,
      "hidden_list": false,
      "hidden_input": false,
      "required": false,
      "column_type": "int(4)",
      "interface": "numeric",
      "options": []
    }
  ]
}
```
