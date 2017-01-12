# Get Preferences
Get table preferences.

> **Note:** Table names are case-sensitive

## HTTP Request

```bash
GET /api/1/tables/[table-name]/preferences
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1/tables/projects/preferences \
        -u usrSTeeornngkti:
```

```javascript
client.getPreferences('projects');
```

## Response

```json
{
  "id": "1",
  "user": "1",
  "table_name": "projects",
  "title": null,
  "columns_visible": "title",
  "sort": "id",
  "sort_order": "ASC",
  "status": "1,2",
  "search_string": null
}
```
