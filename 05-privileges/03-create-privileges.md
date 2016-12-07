# Create Privileges

> **Note:** Table names are case-sensitive

<span class="request">`POST` **/api/1.1/privileges/:groupId**</span>
<span class="description">Creating permissions/privileges to a table for the specified user-group ID.</span>

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**id** _Integer_              | Privilege's Unique Identification number.
**group_id** _Integer_                | Group ID
**table_name** _String_               | Table name that this permissions belongs to.
**allow_add** _Integer_               | Whether the group is allow to add/create entries in the table. (See values below)
**allow_edit** _Integer_              | Whether the group is allow to edit/update entries in the table. (See values below)
**allow_delete** _Integer_            | Whether the group is allow to delete/remove entries in the table. (See values below)
**allow_view** _Integer_              | Whether the group is allow to view/read entries in the table. (See values below)
**allow_alter** _Integer_             | Whether the group is allow to add/create entries in the table. (See values below)
**nav_listed** _Boolean_              | Whether the table should be visible in the sidebar.
**read_field_blacklist** _String_     | List of columns that the group can't view/read.
**write_field_blacklist** _String_    | List of columns that the group can't edit/update.
**status_id** _String_                | State of the record that this permissions belongs to. (Draft, Active or Soft Deleted)

### Example Request

```bash
$ curl -X POST -d "group_id=2&table_name='projects'&allow_edit=2&allow_delete=&write_field_blacklist='title,published_date'" \ https://instance--key.directus.io/api/1.1/privileges/1
```

```php
$privileges = $client->createPrivileges([
  'group_id' => 2,
  'table_name' => 'projects',
  'allow_edit' => 2,
  'allow_delete' => 0,
  'write_field_blacklist' => 'title,published_date'
]);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _Privilege Object_ | <span class="custom">This data and its architecture is based on Directus Privileges's schema.</span>

```json
{
  "meta": {
    "type": "item",
    "table": "directus_privileges"
  },
  "data": {
    "id": 2,
    "table_name": "projects",
    "group_id": 2,
    "read_field_blacklist": null,
    "write_field_blacklist": "title,published_date",
    "nav_listed": 1,
    "status_id": 0,
    "allow_view": 2,
    "allow_add": 1,
    "allow_edit": 2,
    "allow_delete": 0,
    "allow_alter": 1
  }
}
```
