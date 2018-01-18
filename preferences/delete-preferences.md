# Delete Preference

<span class="request">`DELETE` **/api/2.0/preferences/_[id]_**</span>

<span class="description">Deletes a preference</span>

### Example Request

```bash
$ curl -X DELETE https://instance--key.directus.io/api/2.0/preferences/1 \
  -u [user-token]:
```

```php
$client->deletePreference(1);
```

```javascript
client.deletePreference(1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**error** _Error Object_ | This object contains error information (if any) <a class="object">[**Error Object**: View Nested Attributes](/overview/objects-model.md#error-object)</a>

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
    "message": "preference_not_found"
  }
}
```
