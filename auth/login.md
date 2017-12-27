# Authenticate using a user credentials

> **Note:** This endpoint returns a JWT Token that expire in `cms_user_auto_sign_out` minutes set in the web app settings.

<span class="request">`POST` **/api/2.0/auth/login**</span>

<span class="description">Generates a JWT token</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**email** _String_ | <span class="required">Required</span> | The user email
**password** _String_ | <span class="required">Required</span> | The user password

### Example Request

```bash
$ curl --data "email=user@directus.local&password=pass123" \
        https://instance--key.directus.io/api/2.0/auth/login \
                -u [user-token]:
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**data** _object_ | Reference [**Token Object**: View Nested Attributes](/overview/objects-model.md#token-object)
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema</span>

### Example Response

```json
{
 
  "data": {
    "token": "JWT.Token.Example"
  }
}
```
