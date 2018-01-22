# List Groups

<span class="request">`GET` **/api/1.1/groups**</span>

<span class="description">Get a list of user groups</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/groups \
        -u [user-token]:
```

```php
$groups = $client->getGroupList();
```

```javascript
const groups = client.getGroupList();
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Group Object_ Collection | <span class="custom">This data and its architecture is based on Directus groups's schema</span> [**Group Object**: View Nested Attributes](/overview/objects-model.md#group-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_groups",
    "type": "collection",
    "result_count": 2
  },
  "data": [{
    "id": 1,
    "name": "Administrator",
    "description": null,
    "ip_whitelist": null,
    "nav_override": null,
    "nav_blacklist": null
  }, {
     "id": 2,
     "name": "Manager",
     "description": null,
     "ip_whitelist": null,
     "nav_override": null,
     "nav_blacklist": null
   }]
}
```
