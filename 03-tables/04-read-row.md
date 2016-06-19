# Read Row

Get the specified row id in the given table.

> Note: Table names are case-sensitive

### HTTP Request

```bash
GET /api/1/tables/[table-name]/rows/[row-id]
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/rows/1 \
        -u usrSTeeornngkti:
```

### Response

> The architecture of this response is based on your schema.

```json
{
  "id": 1,
  "title": "John's website"
}
```
