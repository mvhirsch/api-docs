# Delete Collection

> **Note:** Collection names are case-sensitive
> **Note:** Cannot be undone, all records are lost

<span class="request">`DELETE` **/api/2.0/collections/_[name]_**</span>

<span class="description">Deletes a collection</span>

### Example Request

```bash
$ curl -X DELETE \
        https://instance--key.directus.io/api/2.0/collections/projects \
                -u [user-token]:
```

```php
$table = $client->deleteCollection('projects');
```

```javascript
const table = client.deleteCollection('projects');
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
    "message": "collection_not_found"
  }
}
```
