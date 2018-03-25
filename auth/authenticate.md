# Authenticate using a user credentials

> **Note:** The JWT Token expires in 5 minutes.
> **Note:** If the user changes group the token becomes invalid for the new group.

<span class="request">`POST` **/api/2.0/auth/authenticate**</span>

<span class="description">Generates a JWT token</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**email** _String_ | <span class="required">Required</span> | The user email
**password** _String_ | <span class="required">Required</span> | The user password

### Example Request

```bash
$ curl --data "email=user@getdirectus.com&password=pass1234" \
        https://instance--key.directus.io/api/2.0/auth/authenticate \
                -u [user-token]:
```

## Response

<span class="attributes">Attribute</span> | Description
-------|------------
**data** _object_ | Reference [**Token Object**: View Nested Attributes](/overview/objects-model.md#token-object)

### Example Response

```json
{

  "data": {
    "token": "JWT.Token.Example"
  }
}
```
