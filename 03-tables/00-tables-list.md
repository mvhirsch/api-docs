# Get Tables

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables**</span>
<span class="description">Get the list of tables viewable by current user.</span>
<span class="arguments">Name</span> | Value | Description
----------------------------------- | ----- | -----------
**include_system** _Boolean_  |  <span class="default">Default **0**</span>  |  Whether or not to include system tables.

## Example Request

```bash
$ curl https://database.account.directus.io/api/1.1/tables \
        -u [user-token]:
```

```php
$tables = $client->getTables(['include_system' => false]);
```

## Response

Collection of [Table Object](/01-overview/objects-model.md#table-object).

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
