# Directus Objects
These are the Directus object models used throughout the system.

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
