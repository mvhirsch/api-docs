# Update Settings

Update Directus settings by the specified collection.

### HTTP Request

```bash
GET /api/1/settings/[id]
```

### Parameters

Name | Description
data | the data to be update

### Example Request

```bash
$ curl --data "rows_per_page=100" https://database.account.directus.io/api/1/settings/global
```

### Response

```json
{
  "cms_user_auto_sign_out": "60",
  "project_name": "Directus Demo",
  "project_url": "http:\/\/examplesite.dev\/",
  "cms_color": "#7ac943",
  "rows_per_page": "100",
  "cms_thumbnail_url": ""
}
```