# Table Rows

Collection of tables viewable by current user.

> Note: Table names are case-sensitive

### HTTP Request

```bash
GET /api/1/tables/[table-name]/rows
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/rows \
        -u usrSTeeornngkti:
```

### Parameters

Name        | Description
----------- | ------------
perPage     | Number of rows per request.
currentPage | Number of the requested page based on perPage. (0 = First `perPage` rows, 1 = Second `perPage` rows, and so on)
sort        | Column used to sort the result
sort_order  | Order to be sorted. (ASC=Ascending or DESC=Descending).
status      | List of status values to be included. Separated by commas. `status: 1,2`
in[field]   | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`

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

### Result Object

Name        | Description
----------- | ------------
Active      | Active entries count.
Delete      | Soft-delete entries count.
Draft       | Draft entries count.
Total       | Total entries count.
rows        | Data rows
