# Get Tables

Get the list of tables viewable by current user

> **Note:** Table names are case-sensitive

## HTTP Request

```bash
GET https://database.account.directus.io/api/1.1/tables
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1.1/tables \
        -u [user-token]:
```

## Response
```json
{
  "meta": {
    "type": "collection",
    "table": "directus_tables"
  },
  "data": [
    {
      "name":"projects"
    },{
      "name":"articles"
    },{
      "name":"clients"
    }
  ]
}
```
