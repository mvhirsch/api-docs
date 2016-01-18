# Create Row

Create a new row in the given table.

### HTTP Request

```bash
POST /api/1/tables/[table-name]/rows
```

### Example Request

```bash
$ curl --data "active=1&title=Example" https://database.account.directus.io/api/1/tables/projects/rows
```

### Parameters

> The parameters are based on the table's column.

### Response

> The architecture of this response is based on your schema.

```json
{
  "id": 1,
  "active" :2,
  "title": "John's Website"
}
```