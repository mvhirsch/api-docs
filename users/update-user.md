# Create User

<span class="request">`POST` **/api/2.0/users**</span>

<span class="description">Create a new user</span>

> **Note:** The attributes are based on the Directus [**User Object**](/overview/objects-model.md#user-object) Model

### Example Request

```bash
$ curl -X PATCH --data "password=secret&group=1" \
        https://instance--key.directus.io/api/2.0/users/1 \
                -u [user-token]:
```

```php
$user = $client->updateUser(1, [
    'password' => 'secret',
    'group' => 1
]);
```

```javascript
const user = client.updateUser({
  password: 'secret',
  group: 1
});
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _User Object_ | <span class="custom">This data and its architecture is based on Directus users's schema</span> [**User Object**: View Nested Attributes](/overview/objects-model.md#user-object)

### Example Response

```json
{
  "data": {
    "id": 1,
    "status": 1,
    "first_name": null,
    "last_name": null,
    "email": "user@getdirectus.com",
    "token": null,
    "title": "",
    "email_notifications": 1,
    "last_login": null,
    "last_access": null,
    "last_page": "",
    "last_ip": "",
    "group": 1,
    "avatar": "//www.gravatar.com/avatar/64e1b8d34j425d19j1ee2ea7236d3028?s=200&d=identicon&r=g",
    "company": null,
    "phone": null,
    "address": null,
    "city": null,
    "state": null,
    "country": null,
    "zip": null,
    "language": "en",
    "timezone": "America/New_York",
    "invite_token": null,
    "invite_date": null,
    "invite_sender": null,
    "invite_accepted": null
  }
}
```
