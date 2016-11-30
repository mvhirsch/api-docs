# PHP SDK (alpha) - UNDER DEVELOPMENT

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

### Create Bookmark

Column                  | Description
----------------------- | ---------------------- 
table_name              | Bookmark Table name
title                   | Bookmark title
columns_visible         | List of column separated by comma.
search_string           | List of filters separated by comma. Format `column:operator:value`
sort                    | Sort column.
sort_order              | Sort column order.
status                  | List of status separated by comma.

#### Returns
An `Entry` object containing the new bookmark created.

```php
$bookmark = $client->createBookmark([
  'title' => 'Draft Articles',
  'table_name' => 'articles',
  'status' => '2'
]);

// echo $bookmark->title;

```

### Create Column

Column                  | Description
----------------------- | ---------------------- 
name                    | Column name.
table                   | Table name.
type                    | Data type.
ui                      | UI name
hidden_input            | Whether the column will be hidden in the edit form.
hidden_list             | Whether the column will be hidden in the list page.
required                | Whether the column is required.
sort                    | Sort position in number.
comment                 | Note on the column.
related_type            |
related_table           |
junction_table          |
junction_key_left       |
junction_key_right      |

**TODO:** Make most of the attributes "guessed/automated", for example `single_ui` should should has `related_table` to `directus_files` and `junction_key_right` to the same column name.

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

Column                  | Description
----------------------- | ---------------------- 
name                    | Group name.
restrict_to_ip_whitelist| List of IPs allowed to authenticate, separated  by comma.


```php
$group = $client->createGroup([
    'name' => 'Editors'
]);
```

### Create/Send Messages

Column                  | Description
----------------------- | ---------------------- 
from                    | Sender user id.
to                      | List of users id, separated by comma.
toGroup                 | List of groups id, separated by comma.
subject                 | Message subject.
message                 | Message content.
attachements            | **TODO** List of files to add to the message

**TODO:** Send/Create responses without the need to specify each recipients.

#### Returns
`Entry` object containing the new created message.

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

Attribute               | Description
----------------------- | ---------------------- 
id                      | Message ID
from                    | Sender ID
to                      | Recipients ID
subject                 | Message subject
responses               | List of responses messages
response_to             | Parent message (replied to this message id)
read                    | Whether the message was read by the authenticated user.


### Create Preferences

Column                  | Description
----------------------- | ---------------------- 
user                    | User ID that this preferences belongs to.
table_name              | Table name that this preferences belongs to.
columns_visible         | List of visible column separated by comma.
sort                    | Sort column.
sort_order              | Sort column order.
status                  | List of status separated by comma.

#### Returns
An `Entry` object containing the new preference created.

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

Column                  | Description
----------------------- | ---------------------- 
group_id                | Group ID
table_name              | Table name that this permissions belongs to.
allow_add               | Whether the group is allow to add/create entries in the table. (See values below)
allow_edit              | Whether the group is allow to edit/update entries in the table. (See values below)
allow_delete            | Whether the group is allow to delete/remove entries in the table. (See values below)
allow_view              | Whether the group is allow to view/read entries in the table. (See values below)
allow_alter             | Whether the group is allow to add/create entries in the table. (See values below)
nav_listed              | Whether the table should be visible in the sidebar.
read_field_blacklist    | List of columns that the group can't view/read.
write_field_blacklist   | List of columns that the group can't edit/update.
**status_id**           | State of the record that this permissions belongs to. (Draft, Active or Soft Deleted)

Permissions: `0=Cannot, 1=Can (Your own), 2=Can (all)` **TODO** Adding constant for the permissions value.

#### Returns
An `Entry` object containing the new privileges created.

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

Parameters              | Description
----------------------- | ---------------------- 
name                    | New table name
**data**                | Not defined yet.

#### Returns
An `Entry` object containing the new table created privileges.

```php
$privileges = $client->createTable('comments');

// echo $privileges->allow_edit;

```

### Create Column Options

Column                  | Description
----------------------- | ---------------------- 
column                  | Column name.
table                   | Column table name.
ui                      | Coolumn UI name.
options                 | Array of options.

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

Column                  | Description
----------------------- | ---------------------- 
active                  | User's status. By default `1=active, 2-inactive, 3=deleted`.
email `Required`        | User's unique email address.
first_name              | User first name.
last_name               | User last name.
password                | Plain text password.
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

**TODO**

#### Returns
An `FileEntry` object containing the new created file.

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
// @TODO: $file->getTitle();

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

```php
$articles = $client->getEntries('articles');

foreach($articles as $article) {
  echo $article->title;
}
```

### Get Entry by ID

Parameters    | Description
------------- | -----------
table         | The Table name to fetch data from.
id            | The record id.

```php
$article = $client->getEntry('articles', 1);
echo $article->title;
```


### Get Users

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

```php
$users = $client->getUsers([
  'orders' => ['email' => 'ASC']
]);

foreach($users as $user) {
  echo $user->email;
}
```

### Get User by ID

Parameters    | Description
------------- | -----------
id            | The user id.


```php
$user = $client->getUser(1);
echo $user->email;
```

**TODO**

#### Returns
An `UserEntry` object containing the user information.

### Get Files

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

```php
$files = $client->getFiles([
  'orders' => ['size' => 'DESC']
]);

foreach($files as $file) {
  echo $file->email;
}
```

### Get File by ID

Parameters    | Description
------------- | -----------
id            | The file.

```php
$file = $client->getFile(1);
echo $file->name;
```

**TODO**

#### Returns
A `FileEntry` object containing the file information.

### Get Groups

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

```php
$groups = $client->getGroups([
  'orders' => ['name' => 'ASC']
]);

foreach($groups as $group) {
  echo $group->name;
}
```

### Get Group by ID

Parameters    | Description
------------- | -----------
id            | The group id.

```php
$group = $client->getGroup(1);
echo $group->name;
```

**TODO**

#### Returns
A `GroupEntry` object containing the group information.

### Get Group Privileges

Parameters    | Description
------------- | -----------
id            | The group id.

```php
$privileges = $client->getGroupsPrivileges(1);

foreach($privileges as $privilege) {
  echo $privilege->table_name;
  echo $privilege->allow_view;
}
```

### Get Settings

Parameters    | Description
------------- | -----------
None          |

```php
$settings = $client->getSettings();
echo $settings->global->project_name
```

**TODO**

#### Returns
A `SettingEntry` object containing the setting information.

### Get Settings by collection

Parameters    | Description
------------- | -----------
collection    | Name of the collection

```php
$settings = $client->getSettingsByCollection('global');
echo $settings->project_name
```

### Get Message

Parameters    | Description
------------- | -----------
user          | The user id.

**TODO**: 
**INCORRECT**: This returns a single message, and the parameters is a message id.

### Get Tables

Parameters    | Description
------------- | -----------
params        | Array of customizable options.

```php
$tables = $client->getTables([
  'include_system' => 1
]);

foreach($tables as $table) {
  echo $table->name;
}
```

**Params**

Parameters    | Description
------------- | -----------
include_system| Include the core tables

### Get Table

Parameters    | Description
------------- | -----------
table         | The Table name.
params        | Array of customizable options.

```php
$table = $client->getTable('directus_groups');
echo $table->name;
```

### Get Table Columns

Parameters    | Description
------------- | -----------
table         | The Table name.
params        | Array of customizable options.

```php
$columns = $client->getTableColumns('articles');

foreach($columns as $column) {
  echo $column->name;
}
```

### Get Table Column

Parameters    | Description
------------- | -----------
table         | The Table name.
column        | The column name.

```php
$column = $client->getTableColumn('articles', 'title');
$isRequired = $column->required;
```

**TODO**:
#### Returns
A `ColumnEntry` object containing the setting information.

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
