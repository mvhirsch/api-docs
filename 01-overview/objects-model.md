# Directus Objects
These are the Directus object models used throughout the system.

## Column Object

**@TODO**

## File Object

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**id** _Integer_                | File Unique Identification number.
**active** _Integer_            | File's status. `1=active, 2=inactive, 3=deleted`.
**name** _String_               | File name
**title** _String_              | File's title
**location** _String_           | Location of where the picture was taken. if any.
**type** _String_               | File mime type
**url** _String_                | File url relativity to Directus base url
**tags** _String_               | Comma separated tags.
**caption** _String_            | File caption (Description).
**width** _Integer_             | File width.
**height** _Integer_            | File height.
**size** _Integer_              | File size in bytes.
**embed_id** _String_           | ID of the embeded file. Ex Youtube ID
**user** _Integer_              | File owner (who uploaded the file)
**date_uploaded** _String_      | File uploaded date. **TODO** It should be an DateTime object.
**storage_adapter** _String_    | Storage adapter used to upload the file

## Privilege Object

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**id** _Integer_              | Privilege's Unique Identification number.
**group_id** _Integer_                | Group ID
**table_name** _String_               | Table name that this permissions belongs to.
**allow_add** _Integer_               | Whether the group is allow to add/create entries in the table. (See values below)
**allow_edit** _Integer_              | Whether the group is allow to edit/update entries in the table. (See values below)
**allow_delete** _Integer_            | Whether the group is allow to delete/remove entries in the table. (See values below)
**allow_view** _Integer_              | Whether the group is allow to view/read entries in the table. (See values below)
**allow_alter** _Integer_             | Whether the group is allow to add/create entries in the table. (See values below)
**nav_listed** _Boolean_              | Whether the table should be visible in the sidebar.
**read_field_blacklist** _String_     | List of columns that the group can't view/read.
**write_field_blacklist** _String_    | List of columns that the group can't edit/update.
**status_id** _String_                | State of the record that this permissions belongs to. (Draft, Active or Soft Deleted)

## Table Object

<span class="attributes">Attribute</span> | Description
------------------------------- | ----------------------
**table_name** _Integer_        | Table Unique name.
**hidden** _Boolean_            | Determines if the table is completely hidden from Directus or not.
**single** _Boolean_             | Determines if the table contains only one record/item or multiple. When Single tables are clicked in the sidebar, the Item Listing page is skipped, taking users directly to the Item Edit page. The lone item should have an id of 1.
**default_status** _Integer_     | This is the table's default status value – which must be an option within the configuration file's Status Mapping.
**footer** _Boolean_             | Determines if a table footer should be shown on the Item Listing page with helper functions for INT columns such as: Average, Min, Max, etc.
**list_view** _Boolean_          | Allows for the Item Listing page to be overridden with a custom view template. @TODO
**column_groupings** _String_    | Soon to be deprecated, this column was used to group columns on the Item Edit page.
**primary_column** _String_      | Soon to be deprecated, This stores the column name that represents a table item/record.
**user_create_column** _String_  | Optional. Enter the name of a column to store the Directus User ID that created the item.
**user_update_column** _Integer_ | Optional. Enter the name of a column to store the datetime that the item was created.
**date_create_column** _Integer_ | Optional. Enter the name of a column to store the Directus User ID that last modified the item.
**date_update_column** _Integer_ | Optional. Enter the name of a column to store the datetime that the item was last modified.
**filter_column_blacklist** _String_ | A CSV of column names in this table that should not be included in the Item Listing page's filter component.

## User Object

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**id** _Integer_              | User's Unique Identification number.
**active** _Integer_          | User's status. `1=active, 2=inactive, 3=deleted`.
**email** _String_            | User's unique email address.
**first_name** _String_       | User first name.
**last_name** _String_        | User last name.
**password** _String_         | hashed password.
**token** _String_            | User's unique API access token
**group** _Integer_           | User's group ID
**email_messages** _Boolean_  | Whether the user wants to receive email notification.
**avatar** _String_           | Avatar url
**avatar_file_id** _Integer_  | File id used as avatar
**language** _String_         | User's default language. Language Supported `en` (English), `es` (Spanish), `de` (German), `fr` (French), `it` (Italian), `zh-hans` (Simplified Chinese) and `nl` (Dutch).
**timezone** _String_         | User's default timezone.
**position** _String_         | User's position on the project/company.
**location** _String_         | User's location in the world or universe.
**phone** _String_            | User's phone number
**address** _String_          | User's address
**city** _String_             | User's city
**state** _String_            | User's state
**zip** _String_              | User's zip code

# Meta Object

<span class="attributes">Attribute</span> | Description
----------------------------- | ----------------------
**type** _String_             | Whether the data returned is a `collection` or a single `item`.
**table** _String_            | Table the data was fetched from.
**Active** _Integer_          | How many `active` items has this table.
**Draft** _Integer_           | How many `draft` items has this table.
**Delete** _String_           | How many `deleted` items has this table.
**total** _String_            | How many items were returned.
**total_entries** _String_    | How many items the table has.

The status name are configurable and `Active`, `Draft` and `Delete` are the default values.
