# Get Settings By Type

Read all Directus settings by the specified collection.

## HTTP Request

```bash
GET /api/1/settings/[collectionName]
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1/settings/global
```

```javascript
client.getSettingsByCollection('global');
```

## Response

```json
{
  "cms_user_auto_sign_out": "60",
  "project_name": "Directus Demo",
  "project_url": "http:\/\/examplesite.dev\/",
  "cms_color": "#7ac943",
  "rows_per_page": "200",
  "cms_thumbnail_url": ""
}
```
