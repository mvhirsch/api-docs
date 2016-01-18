# Columns Information

Get all the given table columns information.

### HTTP Request

```bash
GET /api/1/tables/[table-name]/columns
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/columns
```

### Parameters

None.

### Response

```json
[{
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
```