# Get Random Alphanumeric String

> **Note:** This does not use any sophisticated random algorithm.

<span class="request">`POST` **/api/2.0/utils/random**</span>

<span class="description">Get a random string</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ----- | -----------
**length** _String_  |  <span class="default">Default **32**</span>  |  The length of the random string

### Example Request

```bash
$ curl --data "length=64" \
        https://instance--key.directus.io/api/2.0/utils/random \
        -u [user-token]:
```

```php
$random = $client->getRandom(['length' => 64]);
```

```javascript
const random = client.getRandom({length: 64});
```

## Response

<span class="attributes">Attribute</span> | Description
------|------------
**data** _Random String Object_ | <span class="custom">This data and its architecture is based on Directus Random String object</span> [**Random String Object**: View Nested Attributes](/overview/objects-model.md#random-string-object)

### Example Response

```json
{
  "data": {
    "random": "123456789abc"
  }
}
```
