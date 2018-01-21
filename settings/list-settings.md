# Get Settings List

<span class="request">`GET` **/api/2.0/settings**</span>

<span class="description">Get all Directus settings</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/settings \
  -u [user-token]:
```

```php
$settings = $client->getSettingList();
```

```javascript
const settings = client.getSettingList();
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Setting Object Collection_ | <span class="custom">This data and its architecture is based on Directus settings's schema</span> [**Setting Object**: View Nested Attributes](/overview/objects-model.md#setting-object)

### Example Response

```json
{
  "meta": {
    "type": "collection",
    "table": "directus_settings"
  },
  "data": [{
    "id": 1,
    "scope": "global",
    "key": "map_source",
    "value": "google"    
  }, {
    "id": 2,
    "scope": "global",
    "key": "cms_color",
    "value": "#7ac943"
  }]
}
```
