# Update Permissions

<span class="request">`DELETE` **/api/2.0/permissions/_[id]_**</span>

<span class="description">Deletes a permission</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ---------------------------------------- | -------------------
**Permission Object**         | <span class="required">Required</span> | The permission information. See the [**Permission Object**](/overview/objects-model.md#permission-object)

### Example Request

```bash
$ curl -X DELETE https://instance--key.directus.io/api/2.0/permissions/1 \
       -u [user-token]:
```

```php
$client->deletePermission(1);
```

```javascript
client.deletePermission(1);
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
    "message": "permission_not_found"
  }
}
```
