# Get Column

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables/[table-name]/columns/[column-name]**</span>

<span class="description">Get Information on a given column information from the specified table</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1/tables/projects/columns/title \
        -u [user-token]:
```

```php
$column = $client->getColumn('projects', 'title');
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
**Columns Data** _Column Object_ | <span class="custom">This data and its architecture is based on Directus columns's schema</span>

### Example Response

```json
{
  "meta": {
    "type": "item",
    "table": "directus_columns"
  },
  "data": {
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
  }
}
```
