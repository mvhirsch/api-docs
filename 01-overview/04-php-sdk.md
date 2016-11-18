# PHP SDK (alpha)

## Creating data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
createEntry             | `table`, `data`        | Creates a new entry in the given table.
createUser              | `data`                 | Creates a new user.
createFile              | `data`                 | Creates a new file.

**TODO**: More helpers
- Directus Groups
- Directus Privileges
- Directus Preferences
- Directus Settings

### Create Entry

Parameters    | Description
------------- | -----------
table         | The Table name where the `data` are going to be inserted.
data          | Array of data to be inserted in `table`. All this data attributes will depend on your table columns.

#### Returns
An `Entry` object containing the new created entry.

Example:

```php
$article = $client->createEntry('articles', [
  'title' => 'New Article',
  'body' => 'Some text'
]);

// echo $article->title;

```
### Create User

Column                  | Description
----------------------- | ---------------------- 
active                  | User's status. By default `1=active, 2-inactive, 3=deleted`.
email `Required`        | User's unique email address.
first_name              | User first name.
last_name               | User last name.
password                | Plain text password, will be hashed on the server side.
token                   | User's unique API access token
group                   | User's group ID
email_messages          | Whether the user wants to receive email notification.
avatar                  | Avatar url
avatar_file_id          | Use a file id as avatar
language                | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | User's default timezone.
position                | User's position on the project/company.
location                | User's location in the world or universe.
phone                   | User's phone number
address                 | User's address
city                    | User's city
state                   | User's state
zip                     | User's zip code

Example:

```php
$user = $client->createUser([
  'email' => 'user@website.local',
  'first_name' => 'John',
  'last_name' => 'Bohannon',
  'password' => 'plain-text-password',
  'token' => 'secret-token`
]);

// echo $user->email;

```

#### User Entry attributes

Column                  | Description
----------------------- | ---------------------- 
id                      | User ID
active                  | User's status. `1=active, 2=inactive, 3=deleted`.
email                   | User's unique email address.
first_name              | User first name.
last_name               | User last name.
password                | hashed password. **IS THIS NEEDED?**
token                   | User's unique API access token
group                   | User's group ID
email_messages          | Whether the user wants to receive email notification.
avatar                  | Avatar url
avatar_file_id          | File id used as avatar
language                | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | User's default timezone.
position                | User's position on the project/company.
location                | User's location in the world or universe.
phone                   | User's phone number
address                 | User's address
city                    | User's city
state                   | User's state
zip                     | User's zip code


### Create File

Column                  | Description
----------------------- | ---------------------- 
active                  | File's status. By default `1=active, 2-inactive, 3=deleted`.
title                   | File's title
file                    | Local path of the file that's going to be uploaded.
data                    | File raw content that's going to be uploaded.
**url** (_TODO_)        | URL of the file to upload, OR a youtube/vimeo link to be embeded.
tags                    | Comma separated tags.
caption                 | File caption (Description).

`file` `url` or `data` a required.

Example:

```php
// From a local file
$file = $client->createFile([
  'file' => '/path/to/the/file.jpg',
  'title' => 'Company Group picture',
  'tags' => 'company, employees, team',
  'caption' => 'Whole company at Christmas party'
]);

// echo '<h1>' . $file->title . '</h1>;
// echo '<p>' . $file->caption . '</p>';
// echo '<img src="' . $client->getBaseUrl() . $file->url . '">';

```

**TODO**
 - Create file from a url
 
 
#### File Entry object attributes

Column                  | Description
----------------------- | ---------------------- 
id                      | File ID
active                  | File's status. `1=active, 2=inactive, 3=deleted`.
name                    | File name
title                   | File's title
location                | Location of where the picture was taken. if any.
type                    | File mime type
url                     | File url relativity to Directus base url
tags                    | Comma separated tags.
caption                 | File caption (Description).
width                   | File width.
height                  | File height.
size                    | File size in bytes.
embed_id                | ID of the embeded file. Ex Youtube ID
user                    | File owner (who uploaded the file)
date_uploaded           | File uploaded date
storage_adapter         | Storage adapter used to upload the file
 

---

## Getting data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
getEntries              | `table`, `params`      | Collection of rows (items) for a given table.
getEntry                | `table`, `id`, `params`| Details for a specific table row (item).
getUsers                | `params`               | Collection of users.
getUser                 | `id`, `params`         | Details for a specific user.
getFiles                | `params`               | Collection of files.
getFile                 | `id`, `params`         | Details for a specific file.
getGroups               | `params`               | Collection of all Directus user-groups.
getGroup                | `id`, `params`         | Details for a specific user-group.
getGroupPrivileges      | `group_id`             | Privileges for a given user-group.
getSettings             | None                   | All Directus Settings.
getSettingsByCollection | `collection`           | All Directus Settings in a given collection.
getMessages             | `userId`               | Collection of messages for the authenticated user.
getTables               | `params`               | Collection of tables viewable by authenticated user.
getTable                | `table`                | Collection of latest Directus activity.
getColumns              | `table`, `params`      | Collection of the column details for a given table.
getColumn               | `table`, `column`      | Details for a specific column in a given table.

**TODO**: More helpers
- Directus Preferences

#### Returns
An `Entry` or `EntryCollection` object containing the fetched data.

### Get Entries

Parameters    | Description
------------- | -----------
table         | The Table name to fetch data from.
params        | Array of customiziable options.

### Get Entry by ID

Parameters    | Description
------------- | -----------
table         | The Table name to fetch data from.
id            | The record id.


### Get Users

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

### Get User by ID

Parameters    | Description
------------- | -----------
id            | The user id.

### Get Files

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

### Get File by ID

Parameters    | Description
------------- | -----------
id            | The file.

### Get Groups

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

### Get Group by ID

Parameters    | Description
------------- | -----------
id            | The group id.

### Get Group Privileges

Parameters    | Description
------------- | -----------
id            | The group id.

### Get Settings

Parameters    | Description
------------- | -----------
None          |

### Get Settings by collection

Parameters    | Description
------------- | -----------
collection    | Name of the collection

### Get Messages

Parameters    | Description
------------- | -----------
user          | The user id.

### Get Tables

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

### Get Table

Parameters    | Description
------------- | -----------
table         | The Table name.
params        | Array of customizable options.


### Get Table Columns

Parameters    | Description
------------- | -----------
table         | The Table name.
params        | Array of customizable options.

### Get Table Column

Parameters    | Description
------------- | -----------
table         | The Table name.
column        | The column name.


## Get data Parameters list

### orders

Sort the result by one or more columns.

```php
$params = [
  'orders' => [
    'id' => 'ASC',
    'title' => 'DESC'
  ]
];
```
### orderBy

Sort by only one column.


```php
$params = [
  'orderBy' => 'title'
];
```

### orderDirection

Sort `orderBy` in this direction. `ASC` or `DESC`. Default to `ASC`.

```php
$params = [
  'orderBy' => 'title',
  'orderDirection' => 'DESC'
];
```

### Limit

Limit the numbers of records to be returned.

```php
$params = [
  'limit' => 100
];
```

### Offset

Skip this many rows.


```php
$params = [
  'limit' => 100,
  'offset' => 50
];
```

### status

Return only records that has this status. To include multiple status, it has to be separated by comma.

```php
$params = [
  'status' => [1, 2]
];
```

### ids

A comma-separated list of IDs.

```php
$params = [
   'ids' => [2, 4, 11]
];
```

### Filters

Filter the request by using any of the supported operators.

```php
$params = [
  'filters' => [
    'column_name' => ['operator' => 'value']
  ]
];

$articles = $client->getEntries('articles, [
  'filters' => ['title' => ['like' => 'movies']]
]);
```

#### Supported Operators

Operator                | Description
----------------------- | ----------------------
`=`, `eq`               | Equal to
`<>`, `!=`, `neq`       | Not Equal to
`<`, `lt`               | Less than
`<=`, `lte`             | Less than or equal to
`>`, `gt`               | Greater than
`>=`, `gte`             | Greater than or equal to
`in`                    | Match one of the value in the list
`nin`                   | Not match any value in the list
`null`                  | Is Null
**nnull** (_TODO_)      | Is Not Null
**contains** (_TODO_)   | Contains a string
**ncontains** (_TODO_)  | Not Contains a string
**between** (_TODO_)    | Is Between
**empty** (_TODO_)       | Is Emtpy
**nempty** (_TODO_)     | Is Not Empty

---

## Updating data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
updateEntry             | `table`, `id`, `data`  | Updates the record with the given `id` in `table` with `data`.
updateUser              | `id`, `data`           | Updates the given user `id` with the given `data`.
updateFile              | `id`, `data`           | Updates the give file `id` with the given `data`.

**TODO:** More helpers
- Directus Groups
- Directus Privileges
- Directus Preferences
- Directus Settings

#### Returns
An `Entry` object containing the updated data.

### Update Entry

Parameters    | Description
------------- | -----------
table         | The Table name.
id            | The id of the record to update.
data          | Data to update.

### Update User

Parameters    | Description
------------- | -----------
id            | The id of the user to update.
data          | Data to update.

#### User data

Column                  | Description
----------------------- | ---------------------- 
active                  | User's status. By default `1=active, 2-inactive, 3=deleted`.
email `Required`        | User's unique email address.
first_name              | User first name.
last_name               | User last name.
password                | Plain text password, will be hashed on the server side.
token                   | User's unique API access token
group                   | User's group ID
email_messages          | Whether the user wants to receive email notification.
avatar                  | Avatar url
avatar_file_id          | Use a file id as avatar
language                | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | User's default timezone.
position                | User's position on the project/company.
location                | User's location in the world or universe.
phone                   | User's phone number
address                 | User's address
city                    | User's city
state                   | User's state
zip                     | User's zip code

### Update File

Parameters    | Description
------------- | -----------
id            | The id of the file to update.
data          | Data to update.

#### File data

Column                  | Description
----------------------- | ---------------------- 
active                  | File's status. By default `1=active, 2-inactive, 3=deleted`.
title                   | File's title
file                    | Local path of the file that's going to be uploaded.
data                    | File raw content that's going to be uploaded.
**url** (_TODO_)        | URL of the file to upload, OR a youtube/vimeo link to be embeded.
tags                    | Comma separated tags.
caption                 | File caption (Description).

---

## Deleting data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
deleteEntry             | `table`, `id`          | Deletes the record with the given `id` in `table`.
deleteUser              | `id`                   | Deletes the given user `id`.
deleteFile              | `id`                   | Deletes the give file `id`.

**TODO:** More helpers
- Directus Groups
- Directus Privileges
- Directus Preferences
- Directus Settings

#### Returns
Nothing is returned.

**TODO**: Return whether or not were deleted.

### Delete Entry

Parameters    | Description
------------- | -----------
table         | The table name
id            | The id of the record to delete in `table`.

```php
$client->deleteEntry('articles', 1);
```

### Delete User

Parameters    | Description
------------- | -----------
id            | The id of the user to delete.

```php
$client->deleteUser(1);
```

### Delete File

Parameters    | Description
------------- | -----------
id            | The id of the file to delete.


```php
$client->deleteUser(1);
```
