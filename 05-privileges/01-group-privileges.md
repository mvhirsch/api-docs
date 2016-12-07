# Get Privileges

<span class="request">`GET` **/api/1.1/privileges/[group-id]**</span>
<span class="description">Get the privileges of the specified user-group.</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/privileges/1
```

```php
$privileges = $client->getGroupPrivileges(1);
```

## Response

List of all the tables with their privileges for the specified user-group.

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _Collection of Privilege Object_ | <span class="custom">This data and its architecture is based on Directus table schema.</span>

```json
{
  "meta": {
    "type": "item",
    "table": "directus_privileges"
  },
  "data": [{
    "id": 1,
    "table_name": "projects",
    "group_id": 1,
    "read_field_blacklist": null,
    "write_field_blacklist": null,
    "nav_listed": 1,
    "status_id": 0,
    "allow_view": 2,
    "allow_add": 1,
    "allow_edit": 2,
    "allow_delete": 2,
    "allow_alter": 1
  }]
}
```
