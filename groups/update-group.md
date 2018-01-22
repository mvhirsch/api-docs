# Update Group

<span class="request">`PATCH` **/api/2.0/groups/_[id]_**</span>

<span class="description">Updates a user group</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ---------------------------------------- | -------------------
**Group Object**         | <span class="required">Required</span> | The group information. See the [**Group Object**](/overview/objects-model.md#group-object)

### Example Request

```bash
$ curl --X PATCH --data "description=All+Company+Managers" https://instance--key.directus.io/api/2.0/groups/2 \
  -u [user-token]:
```

```php
$group = $client->updateGroup(2, [
    'description' => 'All Company Managers'
]);
```

```javascript
const group = client.updateGroup(2, {
    description: 'All Company Managers'
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
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
    "description": "All Company Managers",
    "ip_whitelist": null,
    "nav_override": null,
    "nav_blacklist": null
  }
}
```
