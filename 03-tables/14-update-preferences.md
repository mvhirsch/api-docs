# Update Preference

> **Note:** Table names are case-sensitive

<span class="request">`POST` **/api/1.1/tables/[table-name]/preferences**</span>
<span class="description">Get the specified row id in the given table.</span>

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**id** _Integer_              | Preference's Unique Identification number.
**table_name** _String_       | Name of the table.
**columns_visible** _String_  | List of visible columns, separated by commas.
**sort** _String_             | Result will be sorted by this column
**sort_order** _String_       | Sort Order. (ASC=Ascending or DESC=Descending)
**active** _String_           | List of status values. separated by comma.

### Example Request

```bash
$ curl -d sort_order=DESC https://instance--key.directus.io/api/1/tables/projects/preferences \
        -u [user-token]:
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _Preference Object_ | <span class="custom">This data and its architecture is based on Directus Preferences's schema.</span>

```json
{
  "meta": {
    "table": "directus_preferences",
    "type": "item"
  },
  "data": {
    "id": 1,
    "table_name": "projects",
    "title": null,
    "columns_visible": "title",
    "sort": "id",
    "sort_order": "DESC",
    "active": "1,2",
    "search_string": null
  }
}
```
