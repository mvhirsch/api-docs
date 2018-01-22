# Get User

<span class="request">`GET` **/api/2.0/users/_[id]_**</span>

<span class="description">Get an user information</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "group.name" and group.* for all fields in group related field)
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/users/1 \
        -u [user-token]:
```

```php
$user = $client->getUser(1, [
  'fields' => '*',
  'meta' => '*'
]);
```

```javascript
const user = client.getUser(1, {
  fields: '*',
  meta: '*'
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
