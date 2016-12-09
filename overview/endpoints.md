# API Endpoints

**Base API URL: `{{DIRECTUS_ROOT}}/api/1.1/`**

<span class="endpoints">Type</span>      | Resource | Description
--------- | -------- | -----------
GET | /tables | Collection of tables viewable by current user
GET | /tables/**table-name**/rows | Collection of rows (items) for a given table
GET | /tables/**table-name**/rows/**id** | Details for a specific table row (item)
GET | /tables/**table-name**/columns | Collection of the column details for a given table
GET | /tables/**table-name**/columns/**column-name** | Details for a specific column in a given table
GET | /privileges/**group-id** | Privileges for a given user-group
GET | /groups | Collection of all Directus user-groups
GET | /groups/**id** | Details for a specific user-group
GET | /preferences/**table-name** | Preferences for a specific table
GET | /bookmarks | Bookmarks for currently authenticated user
GET | /bookmarks/**id** | Bookmarks for a specific user
POST| /bookmarks
GET | /messages/rows | Collection of messages for the authenticated user
GET | /messages/rows/**id** | Details for a specific message
GET | /activity | Collection of latest Directus activity

## Global Parameters

<span class="attributes">Name</span> | Value | Description
------------------------------------| ----- | ------------
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for for the items
**orders[field]** _String_  |  <span class="default">Default **ASC**</span> |  Order to be sorted. Available options are: `ASC` (Ascending) or `DESC` (Descending)
**status**  _String_ |  <span class="default">Default **None**</span> | List of status values to be included. Separated by commas. `1,2`
**columns** _String_  |  <span class="default">Optional</span>  |  The columns to be shown on the result. Columns are separated by comma. `columns=id,title,published_date`
**in[field]**  _String_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`
**ids** _String_  |  <span class="default">Optional</span>  |  Only list records that its `field` matches one of given value. Can be separated by commas. `ids=1,2`. Same as `in[id]=1,2`
**skip_activity_log** | <span class="default">Default **0**</span> | Whether or not the update is going to be logged in activity
**filters** | <span class="default">Optional</span> | Use the operators below to filter the result: [**Filter Operators**](/overview/endpoints.md#filter-operators)

## Filter Operators

Filter the request by using any of the supported operators.

Operator                | Description
----------------------- | ----------------------
`=`, `eq`, _None_       | Equal to
`<>`, `!=`, `neq`       | Not Equal to
`<`, `lt`               | Less than
`<=`, `lte`             | Less than or equal to
`>`, `gt`               | Greater than
`>=`, `gte`             | Greater than or equal to
`in`                    | Match one of the value in the list
`nin`                   | Not match any value in the list
`null`                  | Is Null
**nnull** (@TODO)      | Is Not Null
**contains** (@TODO)   | Contains a string
**ncontains** (@TODO)  | Not Contains a string
**between** (@TODO)    | Is Between
**empty** (@TODO)      | Is Empty
**nempty** (@TODO)     | Is Not Empty
**has** (@TODO)        | Has one or more related items

## Example API Requests

<span class="request">`GET` **/api/1.1/tables/_[table-name]_/rows**</span>

<span class="description">Retrieve a collection of items within a specific table based on the current user's privileges</span>

<span class="arguments">Name</span> | Value | Description
----------------------- | ----- | -----------
**table-name** _String_ |     | The table name you wish to get items from

### Example Request

```bash
$ curl -g https://instance--key.directus.io/api/1.1/tables/directus_users/rows?filters[email][like]=@rngr.org \
        -u [user-token]:
```

```php
$users = $client->getItems('directus_users, [
  'filters' => ['email' => ['like' => '@rngr.org']]
]);
```

## Response

[User Object](/01-overview/objects-model.md#user-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_users",
    "type": "collection",
    "total": 1,
    "Active": 9,
    "Delete": 0,
    "Draft": 0,
    "total_entries": 9
  },
  "data": [
  {
      "id": 1,
      "active": 1,
      "first_name": "Ben",
      "last_name": "Haynes",
      "email": "ben@rngr.org",
      "token": "user-token",
      "position": "",
      "email_messages": 1,
      "last_login": "2016-12-02T07:44:45-04:00",
      "last_access": "2016-12-02T07:44:45-04:00",
      "last_page": "",
      "ip": "",
      "group": {
        "meta": {
          "table": "directus_groups",
          "type": "item"
        },
        "data": {
          "id": 1,
          "name": "Administrator",
          "description": null,
          "restrict_to_ip_whitelist": "0"
        }
      },
      "avatar": "//www.gravatar.com/avatar/65abcdof6a5aea481d9124343433423sab97e0a0fe?s=200&d=identicon&r=g",
      "avatar_file_id": null,
      "location": "",
      "phone": "",
      "address": "",
      "city": "",
      "state": "",
      "zip": "",
      "language": "en",
      "timezone": "America/New_York"
    },
    {
      "id": 2,
      "active": 1,
      "first_name": "Welling",
      "last_name": "Guzmán",
      "email": "welling@rngr.org",
      "token": "user-token",
      "position": "",
      "email_messages": 1,
      "last_login": "2016-11-02T07:44:45-04:00",
      "last_access": "2016-11-02T07:44:45-04:00",
      "last_page": "",
      "ip": "",
      "group": {
        "meta": {
          "table": "directus_groups",
          "type": "item"
        },
        "data": {
          "id": 1,
          "name": "Administrator",
          "description": null,
          "restrict_to_ip_whitelist": "0"
        }
      },
      "avatar": "//www.gravatar.com/avatar/653cc7f6a5aea481d9124343433423sab97e0a0fe?s=200&d=identicon&r=g",
      "avatar_file_id": null,
      "location": "",
      "phone": "",
      "address": "",
      "city": "",
      "state": "",
      "zip": "",
      "language": "es",
      "timezone": "Pacific/Midway"
    }
  ]
}
```

<span class="request">`GET` **/api/1.1/tables/_[table-name]_/rows**</span>

<span class="description">Returns a collection of table entries based on the current user's privileges</span>

<span class="arguments">Name</span> | Value | Description
----------------------------------- | ----- | ------------
**table-name** _String_ |     | The table name you wish to get items from
**limit** _Integer_  |  <span class="default">Default **200**</span>  |  The number of items to request
**offset**  _Integer_ |  <span class="default">Default **0**</span>  |  The offset for for the items
**orders[field]** _String_  |  <span class="default">Default **ASC**</span> |  Order to be sorted. Available options are: `ASC` (Ascending) or `DESC` (Descending)
**status**  _String_ |  <span class="default">Default **None**</span> | List of status values to be included. Separated by commas, eg: `1,2`
**columns** _String_  |  <span class="default">Optional</span>  |  The columns to be shown on the result. Columns are separated by comma. `columns=id,title,published_date`
**in[field]**  _sting_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas, eg: `in[id]=1,2`
**ids**  |  <span class="default">Optional</span>  |  Comma delimited list of ids to return

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/tables/directus_users/rows \
        -u [user-token]:
```

```php
$projects = $client->getItems('users');
```

### Example Response

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
