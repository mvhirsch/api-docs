# API Endpoints

**Base API URL: `{{DIRECTUS_ROOT}}/api/1.1/`**

Type      | Resource | Description
--------- | -------- | -----------
GET | `/tables` | Collection of tables viewable by current user
GET | `/tables/[table-name]/rows` | Collection of rows (items) for a given table
GET | `/tables/[table-name]/rows/[id]` | Details for a specific table row (item)
GET | `/tables/[table-name]/columns` | Collection of the column details for a given table
GET | `/tables/[table-name]/columns/[column-name]` | Details for a specific column in a given table
GET | `/privileges/[group-id]` | Privileges for a given user-group
GET | `/groups` | Collection of all Directus user-groups
GET | `/groups/[id]` | Details for a specific user-group
GET | `/preferences/[table-name]` | Preferences for a specific table
GET | `/bookmarks` | Bookmarks for currently authenticated user
GET | `/bookmarks/[id]` | Bookmarks for a specific user
GET | `/messages/rows` | Collection of messages for the authenticated user
GET | `/messages/rows/[id]` | Details for a specific message
GET | `/activity` | Collection of latest Directus activity

## Global Parameters

<span class="arguments">Name</span> | Value | Description
------------------------------------| ----- | ------------
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for for the items
**orders[field]** _String_  |  <span class="default">Default **ASC**</span> |  Order to be sorted. Available options are: `ASC` (Ascending) or `DESC` (Descending).
**status**  _String_ |  <span class="default">Default **None**</span> | List of status values to be included. Separated by commas. `1,2`
**columns** _String_  |  <span class="default">Optional</span>  |  The columns to be shown on the result. Columns are separated by comma. `columns=id,title,published_date`
**in[field]**  _String_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`
**ids** _String_  |  <span class="default">Optional</span>  |  Only list records that its `field` matches one of given value. Can be separated by commas. `ids=1,2`. Same as `in[id]=1,2`.
**skip_activity_log** | <span class="default">Default **0**</span> | Whether or not the update is going to be logged in activity.
**filters** | <span class="default">Optional</span> | Use `Filter Object` to filter the result.


## Example API Requests

<span class="request">`GET` **/api/1.1/privileges/:groupId**</span>
<span class="description">Returns JSON object of the privileges for a given group.</span>

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/privileges/1 \
        -u [user-token]:
```

```php
$privileges = $client->getGroupPrivileges(1);
```

## Response

[Privilege Object](/01-overview/objects-model.md#privilege-object)

```json
{
  "meta": {
    "type": "collection",
    "table": "directus_privileges"
  },
  "data": [
    {
      "id": 23,
      "table_name": "countries",
      "allow_add": 1,
      "allow_edit": 2,
      "allow_delete": 2,
      "allow_alter": 1,
      "allow_view": 2,
      "group_id": 1,
      "read_field_blacklist": null,
      "write_field_blacklist": null,
      "nav_listed": 0
    },
    {
      "id": 1,
      "table_name": "directus_activity",
      "allow_add": 1,
      "allow_edit": 2,
      "allow_delete": 2,
      "allow_alter": 1,
      "allow_view": 2,
      "group_id": 1,
      "group_id": 1,
      "read_field_blacklist": null,
      "write_field_blacklist": null,
      "nav_listed": 0
    },
    {
      "id": 18,
      "table_name": "directus_bookmarks",
      "allow_add": 1,
      "allow_edit": 2,
      "allow_delete": 2,
      "allow_alter": 1,
      "allow_view": 2,
      "group_id": 1,
      "group_id": 0,
      "read_field_blacklist": null,
      "write_field_blacklist": null,
      "nav_listed": 0
    }
  ]
}
```

<span class="request">`GET` **/api/1.1/tables/_[table-name]_/rows**</span>

<span class="description">Returns a collection of table entries the authenticated user has permission to view.</span>

<span class="arguments">Name</span> | Value | Description
----------------------------------- | ----- | ------------
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for for the items
**orders[field]** _String_  |  <span class="default">Default **ASC**</span> |  Order to be sorted. Available options are: `ASC` (Ascending) or `DESC` (Descending).
**status**  _String_ |  <span class="default">Default **None**</span> | List of status values to be included. Separated by commas. `1,2`
**`columns`** _String_  |  <span class="default">Optional</span>  |  The columns to be shown on the result. Columns are separated by comma. `columns=id,title,published_date`
**in[field]**  _sting_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`
**`ids`**  |  <span class="default">Optional</span>  |  Comma delimited list of ids to return.

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/tables/directus_users/rows \
        -u [user-token]:
```

```php
$projects = $client->getItems('users');
```

```json
{
  "meta": {
    "active": 1,
    "inactive": 0,
    "trash": 0,
    "total": 1,
    "type": "collection",
    "table": "directus_users"
  },
  "data": [
    {
      "id": 3,
      "active": 1,
      "first_name": "John",
      "last_name": "Smith",
      "email": "john.smith@example.com",
      "password": "asfafspojd92en1oi2n31b412ubb1n",
      "salt": "5329e597d9afa",
      "position": "",
      "email_messages": 1,
      "last_login": null,
      "last_access": null,
      "last_page": "",
      "ip": "",
      "group": {
            "id": 0,
            "name": "Administrator",
            "description": null,
            "restrict_to_ip_whitelist": 0
      },
      "avatar": null,
      "location": "",
      "phone": "",
      "address": "",
      "city": "",
      "state": "",
      "zip": ""
    }
  ]
}
```
