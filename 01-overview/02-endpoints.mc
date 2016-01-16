Type      | Resource | Description
--------- | -------- | -----------
GET | `/tables` | Collection of all tables registered with Directus.
GET | `/tables/[table-name]/rows` | Collection of tables viewable by current user
GET | `/tables/[table-name]/rows/[id]` | Information of a given table entry
GET | `/tables/[table-name]/columns` | Collection of the column details for a given table
GET | `/tables/[table-name]/columns/[column-name]` | Details for a given column in a given table
GET | `/privileges/[group-id]` | Information of privileges for a given user-group
GET | `/groups` | Collection of Directus user-groups
GET | `/groups/[id]` | Information of a user-given group
GET | `/preferences/[table-name]` | Preferences for a given table
GET | `/bookmarks` | Bookmarks for currently authenticated user
GET | `/bookmarks/[id]` | Bookmark details for a user's specified bookmark
GET | `/messages/rows` | Collection of messages for the authenticated user
GET | `/messages/rows/[id]` | Message details for a given message
GET | `/activity` | Collection of latest directus/db activity