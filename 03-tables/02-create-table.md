# Create Table



<span class="request">`POST` **/api/1.1/tables**</span>
<span class="description">The Create Table endpoint adds a new table to your database. Table names must be unique within each database and are limited to letters, numbers, and the following characters: `-_`. When creating a new table you must assign permissions to at least one Directus user-group.</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ---------------------------------------- | -------------------
**name** _String_  |  <span class="required">Required</span>  |  The new table name.

## Example Request

```bash
$ curl -d "name=projects" https://instance--key.directus.io/api/1.1/tables \
        -u [user-token]:
```

```php
$table = $client->createTable('projects');
```

## Response

[Table Object](/01-overview/objects-model.md#table-object).

```json
{
  "meta": {
    "type": "item",
    "table": "directus_tables"
  },
  "data": {
    "id": "projects",
    "name": "projects",
    "table_name": "projects",
    "columns": [
      {
        "id": "id",
        "name": "id",
        "column_name": "id",
        "type": "INT",
        "length": null,
        "precision": 10,
        "scale": 0,
        "sort": 1,
        "default_value": null,
        "nullable": null,
        "column_key": null,
        "extra_options": [],
        "options": [],
        "table_name": "testalonda22",
        "required": false,
        "ui": "numeric",
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      },
      {
        "id": "active",
        "name": "active",
        "column_name": "active",
        "type": "INT",
        "length": null,
        "precision": 10,
        "scale": 0,
        "sort": 2,
        "default_value": "2",
        "nullable": null,
        "column_key": null,
        "extra_options": [],
        "options": [],
        "table_name": "testalonda22",
        "required": false,
        "ui": "numeric",
        "hidden_list": false,
        "hidden_input": false,
        "relationship": null,
        "comment": ""
      }
    ],
    "primary_column": null,
    "schema": "your_database",
    "hidden": false,
    "single": false,
    "default_status": null,
    "user_create_column": null,
    "user_update_column": null,
    "date_create_column": null,
    "date_update_column": null,
    "created_at": "2016-11-26 11:15:17",
    "date_created": null,
    "comment": "",
    "row_count": 0,
    "footer": false,
    "list_view": null,
    "column_groupings": null,
    "filter_column_blacklist": null,
    "preferences": {
      "user": 1,
      "columns_visible": "",
      "table_name": "projects",
      "title": null,
      "sort": "id",
      "sort_order": "ASC",
      "status": "1,2"
    }
  }
}
```
