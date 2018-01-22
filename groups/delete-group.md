# Delete Group

<span class="request">`DELETE` **/api/2.0/groups/_[id]_**</span>

<span class="description">Deletes a user group</span>

### Example Request

```bash
$ curl --X DELETE https://instance--key.directus.io/api/2.0/groups/2 \
  -u [user-token]:
```

```php
$client->deleteGroup(2);
```

```javascript
client.deleteGroup(2);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
<span class="custom">**error**</span> _Object_ | Failed performing the delete action. [**Error Object**: View Nested Attributes](/overview/objects-model.md#error-object)

### Example Response (Success)

```json
{
}
```

### Example Response (Failure)

```json
{
  "error": {
    "code": 1,
    "message": "group_not_found"
  }
}
```
