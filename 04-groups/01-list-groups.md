# Get Groups

Get all the user groups.

## HTTP Request

```bash
GET /api/1/groups
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1/groups
```

```javascript
client.getGroups();
```

## Response
```json
{
  "total": 1,
  "rows": [{
    "id": 1,
    "name": "Administrator",
    "description": null,
    "restrict_to_ip_whitelist": 0,
    "nav_override": null,
    "show_activity": 1,
    "show_messages": 1,
    "show_users": 1,
    "show_files": 1,
    "nav_blacklist": null
  }]
}
```
