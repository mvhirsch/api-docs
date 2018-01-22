# Get Permission

<span class="request">`GET` **/api/2.0/permissions/_[id]_**</span>

<span class="description">Get a permission information</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/permissions/1 \
  -u [user-token]:
```

```php
$permission = $client->getPermission(1);
```

```javascript
const permission = client.getPermission(1);
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
<span class="custom">**data**</span> _Privilege Object Collection_ | <span class="custom">This data and its architecture is based on Directus Privileges's schema</span> [**Privilege Object**: View Nested Attributes](/overview/objects-model.md#privilege-object)

### Example Request

```json
{
  "meta": {
    "type": "item",
    "table": "directus_permissions"
  },
  "data": {
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
  }
}
```
