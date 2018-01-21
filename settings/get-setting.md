# Get Settings

<span class="request">`GET` **/api/2.0/settings/_[id]_**</span>

<span class="description">Get a setting information</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/settings/1 \
  -u [user-token]:
```

```php
$setting = $client->getSetting(1);
```

```javascript
const setting = client.getSetting(1);
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Setting Object_ | <span class="custom">This data and its architecture is based on Directus settings's schema</span> [**Setting Object**: View Nested Attributes](/overview/objects-model.md#setting-object)

### Example Response

```json
{
  "meta": {
    "type": "item",
    "table": "directus_settings"
  },
  "data": {
    "scope": "global",
    "key": "map_source",
    "value": "google"    
  }
}
```
