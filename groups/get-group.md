# Get Group

<span class="request">`GET` **/api/2.0/groups/_[id]_**</span>

<span class="description">Get a user group information</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/groups/2 \
  -u [user-token]:
```

```php
$group = $client->getGroup(2);
```

```javascript
const group = client.getGroup(2);
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Group Object_ | <span class="custom">This data and its architecture is based on Directus groups's schema</span> [**Group Object**: View Nested Attributes](/overview/objects-model.md#group-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_groups",
    "type": "item"
  },
  "data": {
    "id": 2,
    "name": "Manager",
    "description": null,
    "ip_whitelist": null,
    "nav_override": null,
    "nav_blacklist": null
  }
}
```
