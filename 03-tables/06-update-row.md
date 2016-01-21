# Update Row

Update a row in the given table with the specified ID.

### HTTP Request

```bash
PATCH /api/1/tables/[table-name]/rows/[row-id]
```

### Example Request

```bash
$ curl --data "active=1&title=Example" \
        https://database.account.directus.io/api/1/tables/projects/rows/1 \
                -u usrSTeeornngkti:
```

### Parameters

> The parameters are based on the table's column.

### Response

> The architecture of this response is based on your schema.

```json
{
  "id": 1,
  "active": 1,
  "title": "Example"
}
```