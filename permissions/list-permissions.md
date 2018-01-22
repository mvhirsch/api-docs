# List Permissions

<span class="request">`GET` **/api/2.0/privileges_**</span>

<span class="description">Returns a list of permissions</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/permissions \
  -u [user-token]:
```

```php
$permissions = $client->getPermissionList();
```
```javascript
const permissions = client.getPermissionList();
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Permission Object_ Collection | <span class="custom">This data and its architecture is based on Directus Permissions's schema</span> [**Permission Object**: View Nested Attributes](/overview/objects-model.md#permission-object)

### Example Response

```json
{
  "meta": {
    "type": "item",
    "table": "directus_privileges"
  },
  "data": [{
    "id": 1,
    "group": 2,
    "collection": "projects",
    "create": 0,
    "read": 0,
    "update": 2,
    "delete": 0,
    "navigate": 1,
    "read_field_blacklist": null,
    "write_field_blacklist": null,
    "status": null
  }, {
     "id": 2,
     "group": 1,
     "collection": "projects",
     "create": 1,
     "read": 2,
     "update": 2,
     "delete": 2,
     "navigate": 1,
     "read_field_blacklist": null,
     "write_field_blacklist": null,
     "status": null
   }]
}
```
