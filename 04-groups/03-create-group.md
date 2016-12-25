# Create Group

Create a new user group.

## HTTP Request

```bash
GET /api/1/groups
```

## Parameters

Name | Description
---- | ------------
name | The name of the group

## Example Request

```bash
$ curl --data "name='Manager'" https://database.account.directus.io/api/1/groups
```

```javascript
client.createGroup('Manager');
```

## Response
```json
{
  "id": "2",
  "name": "Manager",
  "description": null,
  "restrict_to_ip_whitelist": "0",
  "nav_override": null,
  "show_activity": "1",
  "show_messages": "1",
  "show_users": "1",
  "show_files": "1",
  "nav_blacklist": null
}
```
