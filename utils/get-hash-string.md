# Get a hashed value

<span class="request">`POST` **/api/2.0/utils/hash**</span>

<span class="description">Hash a given string</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ----- | -----------
**string** _String_  |  <span class="required">Required</span>  |  The string to be hashed
**hasher** _String_  |  <span class="default">Default **core**</span>  |  The hasher used to hash the given string
**options** _Object_  |  <span class="default">Default **empty**</span>  |  The hasher options

### Supported hashers

<span class="arguments">Name</span> | Description
------------------ | -----------
**core**           | The php default hasher algorithm used in PASSWORD_DEFAULT
**bcrypt**         | BCrypt algorithm using `password_hash`
**md5   **         | Generates a MD5 hash
**sha1**           | Generates a 160-bit hash value
**sha224**         | Generates a 224-bit hash value
**sha256**         | Generates a 256-bit hash value
**sha384**         | Generates a 384-bit hash value
**sha512**         | Generates a 512-bit hash value

### Example Request

```bash
$ curl --data "string=secret&hasher=bcrypt" \
        https://instance--key.directus.io/api/2.0/hash \
        -u [user-token]:
```

```php
$hash = $client->hash('secret', [
  'hasher' => 'bcrypt'
]);
```

```javascript
var hash = client.hash('secret', {
  hasher: 'bcrypt'
});
```

## Response

<span class="attributes">Attribute</span> | Description
------|------------
<span class="custom">**data**</span> | Containing a `hash` key with the hashed value.
**data** _Hash Object_ | <span class="custom">This data and its architecture is based on Directus hash object</span> [**Hash Object**: View Nested Attributes](/overview/objects-model.md#hash-object)

### Example Response

```json
{
  "data": {
    "hash": "$2y$valueHashed"
  }
}
```
