# Update Group Privileges

Update the specified group privileges/permission on the specified table.

### HTTP Request

```bash
GET /api/1/privileges/[group-id]/[privileges-id]
```

### Parameters

Name        | Description
----------- | ------------
table_name  | The name of the table
group_id    | The id of a user-group that will have access to this table
allow_add   | Allow **group_id** to add entries to this table (1=yes, 0=no)
allow_alter | Allow **group_id** to alter this table (1=yes, 0=no)
allow_delete| Allow **group_id** to _delete_ entries within this table (0=no, 1=yes (your own), 2=yes (all))
allow_edit  | Allow **group_id** to _edit_ entries within this table (0=no, 1=yes (your own), 2=yes (all))
allow_view  | Allow **group_id** to _view_ entries within this table (0=no, 1=yes (your own), 2=yes (all))
nav_listed  | Allow **group_id** to view this table in the navigation.

### Example Request

```bash
$ curl --data "name='Manager'" https://database.account.directus.io/api/1/groups
```

### Response
```json
{
  "id": "21",
  "table_name": "directus_activity",
  "group_id": "2",
  "read_field_blacklist": null,
  "write_field_blacklist": null,
  "nav_listed": "1",
  "status_id": "0",
  "allow_view": "1",
  "allow_add": "1",
  "allow_edit": "1",
  "allow_delete": "1",
  "allow_alter": "1"
}
```