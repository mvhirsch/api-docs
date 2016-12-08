# Get Settings By Type

<span class="request">`GET` **/api/1.1/settings/_collection-name_**</span>

<span class="description">Get all Directus settings for the specified collection</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/settings/global \
  -u [user-token]:
```

```php
$settings = $client->getSettingsByCollection('global');
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on Directus settings's content</span>

### Example Request

```json
{
  "meta": {
    "type": "item",
    "table": "directus_settings",
    "setting_collection": "global"
  },
  "data": {
    "cms_user_auto_sign_out": "60",
    "project_name": "Directus Demo",
    "project_url": "http:\/\/examplesite.dev\/",
    "cms_color": "#7ac943",
    "rows_per_page": "200",
    "cms_thumbnail_url": ""
  }
}
```
