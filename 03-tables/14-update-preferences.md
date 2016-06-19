# Read Row

Get the specified row id in the given table.

> Note: Table names are case-sensitive

### HTTP Request

```bash
POST /api/1/tables/[table-name]/preferences
```

### Parameters

Name             | Description
---------------- | -----------
table_name       | Name of the table.
columns_visible  | List of visible columns, separated by commas.
sort             | Result will be sorted by this column
sort_order       | Sort Order. (ASC=Ascending or DESC=Descending)
active           | List of status values. separated by comma.

### Example Request

```bash
$ curl -d sort_order=DESC https://database.account.directus.io/api/1/tables/projects/preferences \
        -u usrSTeeornngkti:
```

### Response

```json
{
  "id": 1,
  "table_name": "projects",
  "title": null,
  "columns_visible": "title",
  "sort": "id",
  "sort_order": "ASC",
  "active": "1,2",
  "search_string": null
}
```
