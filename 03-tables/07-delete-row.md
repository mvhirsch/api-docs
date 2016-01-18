# Delete Row

Delete or Soft-delete a row in the given table with the specified ID.

### HTTP Request

```bash
PATCH /api/1/tables/[table-name]/rows/[row-id]
```

```bash
DELETE /api/1/tables/[table-name]/rows/[row-id]
```

### Example Request

```bash
$ curl --request PATH \
        https://database.account.directus.io/api/1/tables/projects/rows/1
```

```bash
$ curl --request DELETE \
        https://database.account.directus.io/api/1/tables/projects/rows/1
```

### Parameters

None.

### Response

All the entries from the table.

> The architecture of this response is based on your schema.

```json
{
  "Delete": 1,
  "Active": 0,
  "Draft": 0,
  "total": 1,
  "rows": [
    {
      "id": 1,
      "active": 0,
      "title": "Projects"
    }
  ]
}
```