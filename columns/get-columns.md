# Get Columns

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables/_table-name_/columns**</span>

<span class="description">Get the system and schema information for all the columns within a specified table based on the current user's privileges</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/tables/projects/columns \
        -u [user-token]:
```

```php
$columns = $client->getColumns('projects');
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
**data** _Column Object Collection_ | <span class="custom">This data and its architecture is based on Directus columns's schema</span>

### Example Response

```json
{
  "meta": {
    "table": "directus_columns",
    "type": "collection"
  },
  "data": [{
      "id": "id",
      "column_name": "id",
      "type": "INT",
      "is_nullable": "NO",
      "comment": "",
      "sort": 1,
      "system": true,
      "master": false,
      "hidden_list": false,
      "hidden_input": false,
      "required": true,
      "column_type": "int(11) unsigned",
      "is_writable": true,
      "ui": "numeric",
      "hidden": true,
      "options": []
  }, {
      "id": "title",
      "column_name": "title",
      "type": "VARCHAR",
      "char_length": "100",
      "is_nullable": "YES",
      "comment": "",
      "sort": 2,
      "system": false,
      "master": false,
      "hidden_list": false,
      "hidden_input": false,
      "required": false,
      "column_type": "varchar(100)",
      "is_writable": true,
      "ui": "textinput",
      "options": []
  }]
}
```