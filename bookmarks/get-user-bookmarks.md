# Get User Bookmarks

<span class="request">`GET` **/api/2.0/bookmarks/user/_[user-id]_**</span>

<span class="description">Get all of the bookmarks for the given user</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "user.name" and user.* for all fields in user related field)
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The maximum number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for the items
**sort**  _String_ |  <span class="default">Default **0**</span>  |  CSV of fields to sort by. (Ex: `sort=name`: sort by name ascending , `sort=-name` sort by name descending , `sort=?`: sort randomly) 
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields
**id** _String_  |  <span class="default">Optional</span>  |  Only list records that its `primary key` matches one of given value. Can be separated by commas `id=1,2`. Same as `filter[id][in]=1,2`
**filter** | <span class="default">Optional</span> | Use [**Filter Object**](/overview/filters.md) to filter the result.

> **Note:** To get the current authenticated user bookmarks, "me" can be used as ID 

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/bookmarks/user/me \
  -u [user-token]:
```

```php
// Using the User ID
$bookmarks = $client->getUserBookmarks(1);

// Or Empty for authenticated user
$bookmarks = $client->getUserBookmarks();
```

```javascript
// Using the User ID
const bookmarks = client.getUserBookmarks(1);

// Or Empty for authenticated user
const bookmarks = client.getUserBookmarks();
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Bookmark Object Collection_ | <span class="custom">This data and its architecture is based on Directus bookmarks's schema</span> [**Bookmark Object**: View Nested Attributes](/overview/objects-model.md#bookmark-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_bookmarks",
    "type": "collection",
    "total_count": 4,
    "result_count": 2
  },
  "data": [{
      "id": 1,
      "user": 1,
      "title": "Draft Articles",
      "url": ""
    },
    {
      "id": 2,
      "user": 1,
      "title": "Published Articles",
      "url": ""
    }]
}
```
