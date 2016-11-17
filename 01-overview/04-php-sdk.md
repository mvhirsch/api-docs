# PHP SDK (alpha)

## Creating data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
createEntry             | `table`, `data`        | Creates a new entry in the given table.
createUser              | `data`                 | Creates a new user.
createFile              | `data`                 | Creates a new file.

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

## Updating data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
updateEntry             | `table`, `id`, `data`  | Updates the record with the given `id` in `table` with `data`.
updateUser              | `id`, `data`           | Updates the given user `id` with the given `data`.
updateFile              | `id`, `data`           | Updates the give file `id` with the given `data`.

## Deleting data
Method                  | Parameters             | Description
----------------------- | ---------------------- | -----------
deleteEntry             | `table`, `id`          | Deletes the record with the given `id` in `table`.
deleteUser              | `id`                   | Deletes the given user `id`.
deleteFile              | `id`                   | Deletes the give file `id`.
