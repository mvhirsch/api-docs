# Create Bookmark

<span class="request">`POST` **/api/2.0/bookmarks**</span>

<span class="description">Create a new bookmark</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**user** _Integer_         |   | [Directus user id] This assigns the bookmark to a specific user (Admin only, any other group needs to be their own id, or skip this field)
**title** _String_         |   | The text to display in the navigation menu
**url** _String_           |   | The path to navigate to
**section** _String_        |  | ["search" or "other"] Which nav section to show the link within. User generated bookmarks use "search", while all system links go within "other"

> **Note:** Creating a bookmark will create only a link which will point to an url given.
> **Note:** Creating a bookmark saving a result filtered with different parameters you have to make sure the bookmark `section` is "search" and to [create a preferences](/preferences/create-preferences.md) with the same title as the bookmark.

## Parameters
<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl --data "title=Admin+Settings&url=/settings" \
        https://instance--key.directus.io/api/2.0/bookmarks \
                -u [user-token]:
```

```php
$bookmark = $client->createBookmark([
  'title' => 'Admin Settings',
  'url' => '/settings'
]);
```

```javascript
client.createBookmark({
  title: 'Admin Settings',
  url: '/settings'
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
    "type": "item",
  },
  "data": {
    "id": 1,
    "user": 1,
    "title": "Draft Articles",
    "url": "tables/articles/pref/Draft Articles",
    "icon_class": null,
    "active": null,
    "section": "search"
  }
}
```
