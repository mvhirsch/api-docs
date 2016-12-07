# Get Preferences

> **Note:** Table names are case-sensitive

<span class="request">`GET` **/api/1.1/tables/[table-name]/preferences**</span>
<span class="description">Get table preferences.</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/tables/projects/preferences \
        -u [user-token]:
```

```php
$preferences = $client->getPreferences('projects');
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _Preference Object_ | <span class="custom">This data and its architecture is based on Directus Preferences's schema.</span>

```json
{
  "meta": {
    "type": "item",
    "table": "directus_preferences"
  },
  "data": {
    "id": 1,
    "user": 1,
    "table_name": "projects",
    "title": null,
    "columns_visible": "title",
    "sort": "id",
    "sort_order": "ASC",
    "active": "1,2",
    "search_string": null
  }
}
```
