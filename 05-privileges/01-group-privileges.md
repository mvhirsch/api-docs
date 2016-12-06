# Get Privileges

Get the privileges of the specified user-group.

## HTTP Request

```bash
GET /api/1/privileges/[group-id]
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1/privileges/1
```

## Response

List of all the tables with their privileges for the specified user-group.

```json
[{
  "id": "1",
  "table_name": "projects",
  "group_id": "1",
  "read_field_blacklist": null,
  "write_field_blacklist": null,
  "nav_listed": "1",
  "status_id": "0",
  "allow_view": "2",
  "allow_add": "1",
  "allow_edit": "2",
  "allow_delete": "2",
  "allow_alter": "1"
}]
```