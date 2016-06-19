# Update Column

Update column information. _*Note*_: Does not update the table column-type.

> Note: Table and column names are case-sensitive

_Work in Progress._

### HTTP Request

```bash
POST /api/1/tables/[table-name]/columns/[column-name]
```

### Example Request

```bash
$ curl --data "comment=Project+name" https://database.account.directus.io/api/1/tables/projects/title \
        -u usrSTeeornngkti:
```

### Parameters

Name        | Description
----------- | -----------
column_name | Column's name
data_type   | Column's Data type
char_length | Column's Data type length
ui          | Column's UI type
comment     | Column's comments

### Response

```json
{
    "id": "title",
    "column_name": "title",
    "type": "VARCHAR",
    "char_length": "100",
    "is_nullable": "YES",
    "comment": "Project's title",
    "sort": 3,
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
