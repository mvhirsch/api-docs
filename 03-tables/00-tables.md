# Table list

Get the list of table viewable by current user

### HTTP Request

```bash
GET https://database.account.directus.io/api/1/tables
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables \
        -u [user-token]:
```

### Response
```json
[
  {
    "table_name":"projects"
  },{
    "table_name":"articles"
  },{
    "table_name":"clients"
  }
]
```