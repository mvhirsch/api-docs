# PHP SDK

## Creating data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
createEntry             | `table`, `data`        | Creates a new entry in the given table.
~~createActivity~~      | `data`                 | Creates an activity log.
createBookmark          | `data`                 | Creates a bookmark.
createColumn            | `data`                 | Creates a new column.
createFile              | `data`                 | Creates a new file.
createGroup             | `data`                 | Creates a new group.
createMessage           | `data`                 | Creates/Sends a new messsage.
sendMessage             | `data`                 | `createMessage` alias.
createPreferences       | `data`                 | Creates a table preferences.
createPrivileges        | `data`                 | Creates a table privileges (Permissions).
**createSettings**      | `data`                 | Creates a new setting.
createTable             | `name`, `params`       | Creates a new table.
createUIOptions         | `data`                 | Creates a new UI options.
createUser              | `data`                 | Creates a new user.

### Create Entry

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name where the `data` are going to be inserted.
data          | Array   | Data to be inserted in `table`. All this data attributes will depend on your table columns.

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

### Create Bookmark

Column                  |  Type    | Description
----------------------- | -------- | ---------------------- 
table_name              | String   | Bookmark Table name
title                   | String   | Bookmark title
columns_visible         | String   | List of column separated by comma.
search_string           | String   | List of filters separated by comma. Format `column:operator:value`
sort                    | String   | Sort column.
sort_order              | String   | Sort column order. (`ASC` or `DESC`)
status                  | String   | List of status separated by comma.

#### Returns
An `Entry` object containing the new bookmark created.

Example:

```php
$bookmark = $client->createBookmark([
  'title' => 'Draft Articles',
  'table_name' => 'articles',
  'status' => '2'
]);

// echo $bookmark->title;

```

### Create Column

Column                  | Type      | Description
----------------------- | --------- | ------------ 
name                    | String    | Column name.
table                   | String    | Table name.
type                    | String    | Data type.
ui                      | String    | UI name
hidden_input            | Boolean   | Whether the column will be hidden in the edit form.
hidden_list             | Boolean   | Whether the column will be hidden in the list page.
required                | Boolean   | Whether the column is required.
sort                    | String    | Sort position in number.
comment                 | String    | Note on the column.
relationship_type       | String    | Column relationship type, `ONETOMANY`, `MANYTOMANY` or `MANYTOONE`
related_table           | String    | The table name this column is related to.
junction_table          | String    | The pivot/junction table that joins the column's table with the related table
junction_key_left       | String    | The column name in junction that is related to the column's table.
junction_key_right      | String    | The column name in junction that is related to the related table.

**@TODO** Make most of the attributes "guessed/automated", for example `single_ui` should should has `related_table` to `directus_files` and `junction_key_right` to the same column name.

Example:

```php
$column = $client->createColumn([
    'name' => 'title',
    'table' => 'articles',
    'type' => 'varchar',
    'ui' => 'textinput',
    'length' => 255
]);
```

```php
$column = $client->createColumn([
    'name' => 'image',
    'table' => 'articles',
    'type' => 'int',
    'ui' => 'single_file',
    'related_table' => 'directus_files',
    'junction_key_right' => 'image' // same as the title
]);
```

```php
$column = $client->createColumn([
    'name' => 'posts',
    'table' => 'authors',
    'type' => 'ALIAS',
    'ui' => 'one_to_many',
    'relationship_type' => 'ONETOMANY',
    'related_table' => 'articles',
    'junction_key_right' => 'author'
]);
```

### Create Group

Column                  | Type       | Description
----------------------- | ---------- | -------------------- 
name                    | String     | Group name.
restrict_to_ip_whitelist| String     | List of IPs allowed to authenticate, separated  by comma.

Example:

```php
$group = $client->createGroup([
    'name' => 'Editors'
]);
```

### Create/Send Messages

Column                  | Type      |  Description
----------------------- | --------- | ---------------------- 
from                    | Integer   | Sender user id.
to                      | Array     | List of users id, separated by comma.
toGroup                 | Array     | List of groups id, separated by comma.
subject                 | String    | Message subject.
message                 | String    | Message content.
attachements            | Array     | **@TODO** List of files to add to the message

**@TODO** Send/Create responses without the need to specify each recipients.

#### Returns
`Entry` object containing the new created message.

Example:

Sending message to two users.
```php
$message = $client->createMessage([
    'from' => 1,
    'to' => [2, 5],
    'subject' => 'New Design review',
    'message' => 'I want some feedback on this new design.'
]);
```

Sending message to two groups.
```php
// same as createMessage
$message = $client->sendMessage([
    'from' => 1,
    'toGroup' => [1, 3], // 1 = Administrator, 3 = Editors
    'subject' => 'Tomorrow Meeting',
    'message' => 'I want to you all know that tomorrow meeting was cancelled.'
]);
```

#### Message Entry attributes

Attribute               | Type      | Description
----------------------- | --------- | ---------------------- 
id                      | Integer   | Message ID
from                    | Integer   | Sender ID
recipients              | String    | List of Recipients separated by comma. **@TODO**: it should be an array.
subject                 | String    | Message subject
responses               | Array     | List of responses messages
response_to             | Integer   | Parent message (replied to this message id)
read                    | Integer   | Whether the message was read by the authenticated user. **@TODO** It should be bool


### Create Preferences

Column                  | Type      | Description
----------------------- | --------- | ---------------------- 
user                    | Integer   | User ID that this preferences belongs to.
table_name              | String    | Table name that this preferences belongs to.
columns_visible         | String    | List of visible column separated by comma.
sort                    | String    | Sort column.
sort_order              | String    | Sort column order. `ASC` or `DESC`
status                  | String    | List of status separated by comma.

#### Returns
An `Entry` object containing the new preference created.

Example:

```php
$preference = $client->createPreferences([
  'user' => 1,
  'table_name' => 'articles',
  'columns_visible' => 'title,content,author,published_date'
  'status' => '2'
]);

// echo $preference->columns_visible;

```

### Create Privileges (Permissions)

Column                  | Type      | Description
----------------------- | --------- | ---------------------- 
group_id                | Integer   | Group ID
table_name              | String    | Table name that this permissions belongs to.
allow_add               | Integer   | Whether the group is allow to add/create entries in the table. (See values below)
allow_edit              | Integer   | Whether the group is allow to edit/update entries in the table. (See values below)
allow_delete            | Integer   | Whether the group is allow to delete/remove entries in the table. (See values below)
allow_view              | Integer   | Whether the group is allow to view/read entries in the table. (See values below)
allow_alter             | Integer   | Whether the group is allow to add/create entries in the table. (See values below)
nav_listed              | Boolean   | Whether the table should be visible in the sidebar.
read_field_blacklist    | String    | List of columns that the group can't view/read.
write_field_blacklist   | String    | List of columns that the group can't edit/update.
**status_id**           | String    | State of the record that this permissions belongs to. (Draft, Active or Soft Deleted)

Permissions: `0=Cannot, 1=Can (Your own), 2=Can (all)` **@TODO** Adding constant for the permissions value.

#### Returns
An `Entry` object containing the new privileges created.

Example:

```php
$privileges = $client->createPrivileges([
  'group_id' => 2,
  'table_name' => 'articles',
  'allow_edit' => 2,
  'allow_delete' => 0,
  'write_field_blacklist' => 'title,published_date'
]);

// echo $privileges->allow_edit;

```

### Create Table

Parameters              | Type      | Description
----------------------- | --------- | ---------------------- 
name                    | String    | New table name
**data**                | Array     | Not defined yet.

#### Returns
An `Entry` object containing the new table created privileges.

Example:

```php
$privileges = $client->createTable('comments');

// echo $privileges->allow_edit;

```

### Create Column Options

Column                  | Type      | Description
----------------------- | --------- | ---------------------- 
column                  | String    | Column name.
table                   | String    | Column table name.
ui                      | String    | Coolumn UI name.
options                 | Array     | UI Options.

#### Returns
`Entry` object containing all the column options.

Example:

```php
$options = $client->createColumnUIOptions([
    'column' => 'slug',
    'table' => 'articles',
    'ui' => 'textinput',
    'options' => [
        'readonly' => 1,
        'placeholder' => 'Title slug'
    ]
]);

// echo $options->placeholder;
```

### Create User

Column                  | Type      | Description
----------------------- | --------- | ---------------------- 
active                  | Integer   | User's status. By default `1=active, 2-inactive, 3=deleted`.
email `Required`        | String    | User's unique email address.
first_name              | String    | User first name.
last_name               | String    | User last name.
password                | String    | Plain text password.
token                   | String    | User's unique API access token
group                   | Integer   | User's group ID
email_messages          | Boolean   | Whether the user wants to receive email notification.
avatar                  | String    | Avatar url
avatar_file_id          | Integer   | Use a file id as avatar
language                | String    | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | String    | User's default timezone.
position                | String    | User's position on the project/company.
location                | String    | User's location in the world or universe.
phone                   | String    | User's phone number
address                 | String    | User's address
city                    | String    | User's city
state                   | String    | User's state
zip                     | String    | User's zip code

#### Returns
An `Entry` object containing the new created user.

Example:

```php
$user = $client->createUser([
  'email' => 'user@website.local',
  'first_name' => 'John',
  'last_name' => 'Bohannon',
  'password' => 'plain-text-password',
  'token' => 'secret-token'
]);

// echo $user->email;
// @TODO: echo $user->getEmail(); (UserEntry Object)

```

#### User Entry attributes

Column                  | Type      | Description
----------------------- | --------- | ---------------------- 
id                      | Integer   | User ID
active                  | Integer   | User's status. `1=active, 2=inactive, 3=deleted`.
email                   | String    | User's unique email address.
first_name              | String    | User first name.
last_name               | String    | User last name.
password                | String    | hashed password. **IS THIS NEEDED?**
token                   | String    | User's unique API access token
group                   | Integer   | User's group ID
email_messages          | Boolean   | Whether the user wants to receive email notification.
avatar                  | String    | Avatar url
avatar_file_id          | Integer   | File id used as avatar
language                | String    | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | String    | User's default timezone.
position                | String    | User's position on the project/company.
location                | String    | User's location in the world or universe.
phone                   | String    | User's phone number
address                 | String    | User's address
city                    | String    | User's city
state                   | String    | User's state
zip                     | String    | User's zip code


### Create File

Parameters              | Type     | Description
----------------------- | -------- | ---------------------------
file                    | File     | New file

File Parameters         | Type     | Description
----------------------- | --------------------------------------
path `Required`         | String   | Local path of the file.
**url** (_TODO_)        | String   | URL of the file to upload, OR a youtube/vimeo link to be embeded.
title                   | String   | File's title
tags                    | String   | Comma separated tags.
caption                 | String   | File caption (Description).

#### Returns
An `Entry` object containing the new created file.

**@TODO** Returns a `FileEntry` Object.

Example:

```php
// From a local file
$file = $client->createFile(new File('/path/to/the/file.jpg', [
  'title' => 'Company Group picture',
  'tags' => 'company, employees, team',
  'caption' => 'Whole company at Christmas party'
]);

// echo '<h1>' . $file->title . '</h1>;
// echo '<p>' . $file->caption . '</p>';
// echo '<img src="' . $client->getBaseUrl() . $file->url . '">';
// @TODO: $file->getTitle();

```

**@TODO**
 - Create file from a url
 
 
#### File Entry object attributes

Column                  | Type     | Description
----------------------- | -------- | ---------------------- 
id                      | Integer  | File ID
active                  | Integer  | File's status. `1=active, 2=inactive, 3=deleted`.
name                    | String   | File name
title                   | String   | File's title
location                | String   | Location of where the picture was taken. if any.
type                    | String   | File mime type
url                     | String   | File url relativity to Directus base url
tags                    | String   | Comma separated tags.
caption                 | String   | File caption (Description).
width                   | Integer  | File width.
height                  | Integer  | File height.
size                    | Integer  | File size in bytes.
embed_id                | String   | ID of the embedded file. Ex Youtube ID
user                    | Integer  | File owner (who uploaded the file)
date_uploaded           | String   | File uploaded date. **@TODO** It should be an DateTime object.
storage_adapter         | String   | Storage adapter used to upload the file
 

---

## Getting Data

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

**@TODO**: More helpers
- Directus Preferences

#### Returns
An `Entry` or `EntryCollection` object containing the fetched data.

### Get Entries

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name to fetch data from.
params        | Array   | Customiziable options.

```php
$articles = $client->getEntries('articles');

foreach($articles as $article) {
  echo $article->title;
}
```

### Get Entry by ID

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name to fetch data from.
id            | Mixed   | The record id.

```php
$article = $client->getEntry('articles', 1);
echo $article->title;
```


### Get Users

Parameters    | Type    | Description
------------- | ------- | -----------
params        | Array   | Customizable options.

```php
$users = $client->getUsers([
  'orders' => ['email' => 'ASC']
]);

foreach($users as $user) {
  echo $user->email;
}
```

### Get User by ID

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The user id.


```php
$user = $client->getUser(1);
echo $user->email;
```

**@TODO**

#### Returns
An `UserEntry` object containing the user information.

### Get Files

Parameters    | Type    | Description
------------- | ------- | -----------
params        | Array   | Customizable options.

```php
$files = $client->getFiles([
  'orders' => ['size' => 'DESC']
]);

foreach($files as $file) {
  echo $file->email;
}
```

### Get File by ID

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The file.

```php
$file = $client->getFile(1);
echo $file->name;
```

**@TODO**

#### Returns
A `FileEntry` object containing the file information.

### Get Groups

Parameters    | Type    | Description
------------- | ------- | -----------
params        | Array   | Customizable options.

```php
$groups = $client->getGroups([
  'orders' => ['name' => 'ASC']
]);

foreach($groups as $group) {
  echo $group->name;
}
```

### Get Group by ID

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The group id.

```php
$group = $client->getGroup(1);
echo $group->name;
```

**@TODO**

#### Returns
A `GroupEntry` object containing the group information.

### Get Group Privileges

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The group id.

```php
$privileges = $client->getGroupsPrivileges(1);

foreach($privileges as $privilege) {
  echo $privilege->table_name;
  echo $privilege->allow_view;
}
```

### Get Settings

Parameters    | Type    | Description
------------- | ------- | -----------
None          |         |

```php
$settings = $client->getSettings();
echo $settings->global->project_name
```

**@TODO**

#### Returns
A `SettingEntry` object containing the setting information.

### Get Settings by collection

Parameters    | Type    | Description
------------- | ------- | -----------
collection    | String  | Name of the collection

```php
$settings = $client->getSettingsByCollection('global');
echo $settings->project_name
```

### Get Message

Parameters    | Type    | Description
------------- | ------- | -----------
user          | Integer | The user id.

**@TODO**: 
**INCORRECT**: This returns a single message, and the parameters is a message id.

### Get Tables

Parameters    | Type    | Description
------------- | ------- | -----------
params        | Array   | Customizable options.

```php
$tables = $client->getTables([
  'include_system' => 1
]);

foreach($tables as $table) {
  echo $table->name;
}
```

**Params**

Parameters    | Type    | Description
------------- | ------- | -----------
include_system| Boolean | Include the core tables

### Get Table

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name.
params        | Array   | Customizable options.

```php
$table = $client->getTable('directus_groups');
echo $table->name;
```

### Get Table Columns

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name.
params        | Array   | Customizable options.

```php
$columns = $client->getTableColumns('articles');

foreach($columns as $column) {
  echo $column->name;
}
```

### Get Table Column

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name.
column        | String  | The column name.

```php
$column = $client->getTableColumn('articles', 'title');
$isRequired = $column->required;
```

#### Returns
A `Entry` object containing the setting information.

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
**empty** (_TODO_)      | Is Emtpy
**nempty** (_TODO_)     | Is Not Empty
**has** (_TODO_)        | Has one or more related entries

---

## Updating data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
updateEntry             | `table`, `id`, `data`  | Updates the record with the given `id` in `table` with `data`.
updateUser              | `id`, `data`           | Updates the given user `id` with the given `data`.
updateFile              | `id`, `data`           | Updates the give file `id` with the given `data`.

**@TODO** More helpers
- Directus Groups
- Directus Privileges
- Directus Preferences
- Directus Settings

#### Returns
An `Entry` object containing the updated data.

### Update Entry

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The Table name.
id            | Mixed   | The id of the record to update.
data          | Array   | Data to update.

### Update User

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the user to update.
data          | Array   | Data to update.

#### User data

Column                  | Type    | Description
----------------------- | ------- | ---------------------- 
active                  | Integer | User's status. By default `1=active, 2-inactive, 3=deleted`.
email `Required`        | String  | User's unique email address.
first_name              | String  | User first name.
last_name               | String  | User last name.
password                | String  | Plain text password, will be hashed on the server side.
token                   | String  | User's unique API access token
group                   | Integer | User's group ID
email_messages          | Integer | Whether the user wants to receive email notification.
avatar                  | String  | Avatar url
avatar_file_id          | Integer | Use a file id as avatar
language                | String  | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
timezone                | String  | User's default timezone.
position                | String  | User's position on the project/company.
location                | String  | User's location in the world or universe.
phone                   | String  | User's phone number
address                 | String  | User's address
city                    | String  | User's city
state                   | String  | User's state
zip                     | String  | User's zip code

### Update File

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the file to update.
data          | Array|File | Data to update.

Example:

```php
$updatedFile = $client->updateFile(1, ['title' => 'New Design']);

// echo $updatedFile->title;
```


```php
$updatedFile = $client->updateFile(1, new File('/path/to/file'));

// echo $updatedFile->url;
```

---

## Deleting data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
deleteEntry             | `table`, `id`          | Deletes the record with the given `id` in `table`.
deleteBookmark          | `id`                   | Deletes the given bookmark id.
deleteColumn            | `name`. `table`        | Deletes the tiven column name in the given table name.
deleteFile              | `id`                   | Deletes the give file `id`.
deleteGroup             | `id`                   | Creates a new group.
deleteTable             | `name`                 | Creates a new table.
deleteUser              | `id`                   | Deletes the given user `id`.

#### Returns
Nothing is returned.

**@TODO**: Return whether or not were deleted.

### Delete Entry

Parameters    | Type    | Description
------------- | ------- | -----------
table         | String  | The table name
id            | Integer | The id of the record to delete in `table`.

Example:

```php
$client->deleteEntry('articles', 1);
```

### Delete Bookmark

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the bookmark to delete.

Example:

```php
$client->deleteBookmark(1);
```

### Delete Column

Parameters    | Type    | Description
------------- | ------- | -----------
name          | String  | The column name to delete.
table         | String  | The table the colum belongs to.

Example:

```php
$client->deleteColumn('slug', 'articles');
```

### Delete File

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the file to delete.

Example:

```php
$client->deleteUser(1);
```

### Delete Group

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the group to delete.

Example:

```php
$client->deleteGroup(1);
```

### Delete Table

Parameters    | Type    | Description
------------- | ------- | -----------
name          | String  | The name of the table to delete.

Example:

```php
$client->deleteTable('comments');
```

### Delete User

Parameters    | Type    | Description
------------- | ------- | -----------
id            | Integer | The id of the user to delete.

Example:

```php
$client->deleteUser(1);
```
