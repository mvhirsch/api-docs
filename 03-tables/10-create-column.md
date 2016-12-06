# Create Column

Create/Add a column to the given table.

> **Note:** Table names are case-sensitive

## HTTP Request

```bash
POST /api/1/tables/[table-name]/columns
```

```bash
$ curl -X POST -d "column_name=year&data_type=int&char_length=4&ui=numeric&comment=Year+build" \       
        https://database.account.directus.io/api/1/tables/projects/columns \
        -u usrSTeeornngkti:
```

## Parameters

Name        | Description
----------- | -----------
column_name | Column's name
data_type   | Column's Data type
char_length | Column's Data type length
ui          | Column's UI type
comment     | Column's comments

## Response

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
