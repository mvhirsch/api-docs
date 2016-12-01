# Create Table

The Create Table endpoint adds a new table to your database. Table names must be unique within each database and are limited to letters, numbers, and the following characters: `-_`. When creating a new table you must assign permissions to at least one Directus user-group.


## HTTP Request

```bash
GET https://database.account.directus.io/api/1/privileges/[group-id]
Authentication:
```

## Example Request

```bash
$ curl -d "table_name=Projects&group_id=1&addTable=true&allow_add=1&allow_alter=1&allow_delete=1&allow_edit=1&allow_view=1" https://database.account.directus.io/api/1/privileges/1 \
        -u usrSTeeornngkti:
```

## Parameters
Name        | Description
----------- | ------------
table_name  | A unique name for the new table
group_id    | The id of a user-group that will have access to this table
addTable    | Set to **true** to add a new table
allow_add   | Allow **group_id** to add entries to this table (1=yes, 0=no)
allow_alter | Allow **group_id** to alter this table (1=yes, 0=no)
allow_delete| Allow **group_id** to _delete_ entries within this table (0=no, 1=yes (your own), 2=yes (all))
allow_edit  | Allow **group_id** to _edit_ entries within this table (0=no, 1=yes (your own), 2=yes (all))
allow_view  | Allow **group_id** to _view_ entries within this table (0=no, 1=yes (your own), 2=yes (all))

## Response

```json
{
   "id":"1",
   "table_name":"projects",
   "group_id":"1",
   "read_field_blacklist":null,
   "write_field_blacklist":null,
   "nav_listed":"1",
   "status_id":"0",
   "allow_view":"2",
   "allow_add":"1",
   "allow_edit":"2",
   "allow_delete":"2",
   "allow_alter":"1"
}
```
