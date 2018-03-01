# Ping the server

<span class="request">`GET` **/api/2.0/server/ping**</span>

<span class="description">Check if the API server is working</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/server/ping \
        -u [user-token]:
```

```php
$output = $client->server->ping();
```

```javascript
var output = client.server.ping();
```

## Response

The server will respond with a "pong" string if successful

### Example Response

```
pong
```
