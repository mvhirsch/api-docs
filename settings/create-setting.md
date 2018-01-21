# Create Settings

<span class="request">`POST` **/api/2.0/settings**</span>

<span class="description">Creates a new setting</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**scope** _String_ | <span class="required">Required</span> | The setting `scope` the setting belongs to.
**key** _String_ | <span class="required">Required</span> | The name of the setting
**value** _String_ | | The value of the setting

### Example Request

```bash
$ curl --data "scope=global&key=map_source&value=google" https://instance--key.directus.io/api/2.0/settings \
  -u [user-token]:
```

```php
$setting = $client->createSetting([
    'scope' => 'global',
    'key' => 'map_source',
    'value' => 'google'
]);
```

```javascript
const setting = client.createSetting({
  scope: 'global',
  key: 'map_source',
  value: 'google'
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Setting Object_ | <span class="custom">This data and its architecture is based on Directus settings's schema</span> [**Setting Object**: View Nested Attributes](/overview/objects-model.md#setting-object)

### Example Response

```json
{
  "data": {
    "scope": "global",
    "key": "map_source",
    "value": "google"
  }
}
```
