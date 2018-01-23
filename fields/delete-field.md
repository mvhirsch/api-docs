# Delete Field

> **Note:** Table names are case-sensitive

<span class="request">`DELETE` **/api/1.1/fields/_[collection]_/_[field]_**</span>

<span class="description">Deletes a field from a collection</span>

### Example Request

```bash
$ curl -X DELETE  https://instance--key.directus.io/api/2.0/fields/projects/year \
        -u [user-token]:
```

```php
$client->deleteField('projects', 'year');
```

```javascript
client.deleteField('projects', 'year');
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
    "message": "field_not_found"
  }
}
```
