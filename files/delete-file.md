# Delete File

<span class="request">`DELETE` **/api/2.0/files/_[id]_**</span>

<span class="description">Deletes a file</span>

### Example Request

```bash
$ curl --X DELETE https://instance--key.directus.io/api/2.0/files/1 \
  -u [user-token]:
```

```php
$client->deleteFile(1);
```

```javascript
client.deleteFile(1);
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
    "message": "file_not_found"
  }
}
```
