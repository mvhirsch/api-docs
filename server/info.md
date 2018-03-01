# Get Server Information

<span class="request">`GET` **/api/2.0/server/info**</span>

<span class="description">Get the server api information</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/server/info \
        -u [user-token]:
```

```php
$info = $client->server->info();
```

```javascript
const info = client.server.info();
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**data** _Server Info Object_ | <span class="custom"> _Work In Progress_</span>

### Example Response

```json
{
  "data": {
    "api": {
      "version": "2.0.0"
    },
    "server": {
      "general": {
        "php_version": "5.6.31",
        "php_api": "apache2handler"
      }
    }
  }
}
```
