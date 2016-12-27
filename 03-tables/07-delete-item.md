# Delete Item

Delete or Soft-delete a row in the given table with the specified ID.

> **Note:** Table names are case-sensitive

## HTTP Request

```bash
PATCH /api/1/tables/[table-name]/rows/[row-id]
```

```bash
DELETE /api/1/tables/[table-name]/rows/[row-id]
```

### Example Request

```bash
$ curl -X PATCH --data "active=0" \
        https://database.account.directus.io/api/1/tables/projects/rows/1 \
                -u usrSTeeornngkti:
```

```php
// Soft delete (only if it has status columm)
$client->deleteItem('projects', 1);

// Delete from DB
$client->deleteItem('projects', 1, true);
```

```javascript
// Soft delete (only if it has status columm)
client.deleteItem('projects', 1);

// Delete from DB
client.deleteItem('projects', 1, true);
```

## Parameters

Name     | Description
-------- | -----------
active   | Status value. delete = 0

```bash
$ curl -X DELETE \
        https://database.account.directus.io/api/1/tables/projects/rows/1 \
                -u usrSTeeornngkti:
```

## Parameters

None.

## Response

All the entries from the table.

> **Note:** The architecture of this response is based on your schema.

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
