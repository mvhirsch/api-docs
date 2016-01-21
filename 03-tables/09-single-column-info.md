# Single Column Information

Get Information on a given column information from the specified table.

### HTTP Request

```bash
GET /api/1/tables/[table-name]/columns/[column-name]
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/columns/title \
        -u usrSTeeornngkti:
```

### Parameters

None.

### Response

```json
{
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
```