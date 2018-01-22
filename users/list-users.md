# List Users

<span class="request">`GET` **/api/2.0/users**</span>

<span class="description">Returns a list of users</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "group.name" and group.* for all fields in group related field)
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The maximum number of users to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for the users list
**sort**  _String_ |  <span class="default">Default **0**</span>  |  CSV of fields to sort by. (Ex: `sort=name`: sort by name ascending , `sort=-name` sort by name descending , `sort=?`: sort randomly)
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields
**id** _String_  |  <span class="default">Optional</span>  |  Only list users with ID matches one of given value. Can be separated by commas `id=1,2`. Same as `filter[id][in]=1,2`, if only one given, the output will be a single object.
**filter** | <span class="default">Optional</span> | Use [**Filter Object**](/overview/filters.md) to filter the result.

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/users?fields=id,email \
        -u [user-token]:
```

```php
$users = $client->getUserList([
  'fields' => ['id', 'email']
]);
```

```javascript
const users = client.getUserList({
  fields: ['id', 'email']
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _User Object_ Collection | <span class="custom">This data and its architecture is based on Directus users's schema</span> [**User Object**: View Nested Attributes](/overview/objects-model.md#user-object)

### Example Response

```json
{
  "data": [
    {
      "id": 1,
      "email": "user@getdirectus.com"
    },
    {
      "id": 2,
      "email": "user2@getdirectus.com"
    }
  ]
}
```
