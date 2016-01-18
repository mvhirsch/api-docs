# Create Table

Get the information from the given table name.

### HTTP Request

```bash
GET https://database.account.directus.io/api/1/privileges/[group-id]
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/privileges/1
```

### Parameters
Name        | Description
----------- | ------------
table_name  | Name of the table
group_id    | the group id to which this privileges are going to be assigned to.
addTable    | Set to **true** to add a new table
allow_add   | Allow **group_id** to whether add entries in this table or not. (1=yes, 0=no)
allow_alter | Allow **group_id** to whether alter this table or not. (1=yes, 0=no)
allow_delete| Allow **group_id** to whether _delete_ entries in this table or not. (0=no, 1=yes (your own), 2=yes (any))
allow_edit  | Allow **group_id** to whether _edit_ entries in this table or not. (0=no, 1=yes (your own), 2=yes (any))
allow_view  | Allow **group_id** to whether _view_ entries in this table or not. (0=no, 1=yes (your own), 2=yes (any))

### Response

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