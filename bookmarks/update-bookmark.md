# Update Bookmark

<span class="request">`PATCH` **/api/2.0/bookmarks/_[id]_**</span>

<span class="description">Update an existing bookmark</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**user** _Integer_         |   | [Directus user id] This assigns the bookmark to a specific user. Default to the authenticated user id
**title** _String_         |   | The text to display in the navigation menu
**url** _String_           |   | The path the bookmarks navigate to 

## Parameters
<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**meta** _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl -X PATCH --data "title=Global+Settings&url=/settings/global" \
        https://instance--key.directus.io/api/2.0/bookmarks/1 \
                -u [user-token]:
```

```php
$bookmark = $client->updateBookmark(1, [
  'title' => 'Global Settings',
  'url' => '/settings/global'
]);
```

```javascript
const bookmark = client.updateBookmark(1, {
  title: 'Global Settings',
  url: '/settings/global'
});
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Bookmark Object_ | <span class="custom">This data and its architecture is based on Directus bookmarks's schema</span> [**Bookmark Object**: View Nested Attributes](/overview/objects-model.md#bookmark-object)

> **Note:** the metadata information is off by default. Read the metadata parameter in the [**Query Parameters Object**](/overview/objects-model.md#query-parameters-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_bookmarks",
    "type": "item"
  },
  "data": {
    "id": 1,
    "user": 1,
    "title": "Global Settings",
    "url": "/settings/global"
  }
}
```
