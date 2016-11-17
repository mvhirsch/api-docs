# PHP SDK (alpha)

## Creating data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
createEntry             | `table`, `data`        | Creates a new entry in the given table.
createUser              | `data`                 | Creates a new user.
createFile              | `data`                 | Creates a new file.

### Create Entry

Parameters    | Description
------------- | -----------
table         | The Table name where the `data` are going to be inserted.
data          | Array of data to be inserted in `table`.

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

Example:

```php
$user = $client->createUser([
  'email' => 'New Article',
  'body' => 'Some text'
]);

// echo $user->email;

```

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

## Updating data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
updateEntry             | `table`, `id`, `data`  | Updates the record with the given `id` in `table` with `data`.
updateUser              | `id`, `data`           | Updates the given user `id` with the given `data`.
updateFile              | `id`, `data`           | Updates the give file `id` with the given `data`.

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

### Update File

Parameters    | Description
------------- | -----------
id            | The id of the file to update.
data          | Data to update.

## Deleting data

Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
deleteEntry             | `table`, `id`          | Deletes the record with the given `id` in `table`.
deleteUser              | `id`                   | Deletes the given user `id`.
deleteFile              | `id`                   | Deletes the give file `id`.

#### Returns
Nothing is returned.

### Delete Entry

Parameters    | Description
------------- | -----------
id            | The id of the record to delete.

### Delete User

Parameters    | Description
------------- | -----------
id            | The id of the user to delete.

### Delete File

Parameters    | Description
------------- | -----------
id            | The id of the file to delete.
