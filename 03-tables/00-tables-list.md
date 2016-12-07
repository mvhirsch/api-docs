# Get Tables

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables**</span>

<span class="description">Retrieve a collection of tables within Directus. Which tables are returned is determined by the current user's privileges</span>

<span class="arguments">Name</span> | Value | Description
----------------------------------- | ----- | -----------
**include_system** _Boolean_  |  <span class="default">Default **0**</span>  |  Whether or not to include Directus system tables

### Example Request

```bash
$ curl https://database.account.directus.io/api/1.1/tables \
        -u [user-token]:
```

```php
$tables = $client->getTables(['include_system' => false]);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _Collection of Table Object_ | <span class="custom">This data and its architecture is based on the Directus table schema</span>

### Example Response

```json
{
  "meta": {
    "type": "collection",
    "table": "directus_tables"
  },
  "data": [
    {
      "name": "projects"
    },{
      "name": "articles"
    },{
      "name": "clients"
    }
  ]
}
```
