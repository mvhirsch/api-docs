# Table Rows

Collection of tables viewable by current user.

### HTTP Request

```bash
GET /api/1/tables/[table-name]/rows
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/rows
```

### Response

> The architecture of this response is based on your schema.

```json
{
  "Delete": 0,
  "Active": 1,
  "Draft": 0,
  "total": 1,
  "rows": [
    {
      "id": 1,
      "title": "John's website"
    },
    {
      ...
    }
  ]
}
```

### Parameters

Name        | Description
----------- | ------------
Active      | Active entries count.
Delete      | Soft-delete entries count.
Draft       | Draft entries count.
Total       | Total entries count.
rows        | Data rows