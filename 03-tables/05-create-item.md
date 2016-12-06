# Create Item

Create a new item in the given table.

> **Note:** Table names are case-sensitive

> **Note:** These arguments and attributes are based on the table's custom columns

## Request

```bash
POST /api/1/tables/[table-name]/rows
```

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**table** _string_ | <span class="required">Required</span> | The table name within which the record will be added. The custom column arguments below must match this table's schema.
<span class="custom">**Custom Data**</span> _various_ | | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

### Example Request

```bash
$ curl --data "active=1&title=School+Website" \
        https://database.account.directus.io/api/1/tables/projects/rows \
                -u usrSTeeornngkti:
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**Custom Data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

### Example Response

```json
{
  "id": 1,
  "active": 1,
  "title": "School Website"
}
```