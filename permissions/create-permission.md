# Create Permission

<span class="request">`POST` **/api/2.0/permissions/_[id]_**</span>

<span class="description">Create new permission</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ---------------------------------------- | -------------------
**Permission Object**         | <span class="required">Required</span> | The permission information. See the [**Permission Object**](/overview/objects-model.md#permission-object)

### Example Request

```bash
$ curl -d "group=2&collection=projects&update=2&delete=0" \
       https://instance--key.directus.io/api/2.0/permissions \
       -u [user-token]:
```

```php
$permission = $client->createPermission([
  'group' => 2,
  'collection' => 'projects',
  'update' => 2,
  'delete' => 0
]);
```

```javascript
const permission = client.createPermission({
  group: 2,
  collection: 'projects',
  update: 2,
  delete: 0
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Permission Object_ | <span class="custom">This data and its architecture is based on Directus Permissions's schema</span> [**Permission Object**: View Nested Attributes](/overview/objects-model.md#permission-object)

### Example Response

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
