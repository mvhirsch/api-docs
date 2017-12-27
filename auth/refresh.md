# Get a new refresh token

> **Note:** This endpoint generates a new token using the same information extending the live of the token by `cms_user_auto_sign_out` value in settings.
> **Note 2:** This probably is a bad idea, because the user has unlimited option to create more tokens, not yet to be in the final API, but was already coded by confusion.

<span class="request">`POST` **/api/2.0/auth/refresh**</span>

<span class="description">Generates a new JWT token using another valid token</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**token** _String_ | <span class="required">Required</span> | A valid JWT token

### Example Request

```bash
$ curl --data "token=a-valid.jwt.token" \
        https://instance--key.directus.io/api/2.0/auth/refresh \
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
