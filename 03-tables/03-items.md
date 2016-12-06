# Get Items

<span class="request">`GET` **/api/1/tables/_[table-name]_/rows**</span>

<span class="description">Retrieve a collection of items within a specific table. Which columns are visible is determined by the current user's privileges.</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**perPage** _int_ | <span class="default">Default **200**</span> | The number of items to request
**currentPage** _int_ | <span class="default">Default **1**</span> | The offset for for the items
**sort** _string_ | <span class="default">Default **id**</span> | The column used to sort the items
**sort_order** _string_ | <span class="default">Default **ASC**</span> | Order to be sorted. Available options are: `ASC` (Ascending) or `DESC`
**status** _string_ | <span class="default">Default **1**</span> | List of status values to be included. Separated by commas. `1,2`
**in[field]**  _sting_ | <span class="default">Optional</span> | Only list records that its `field` matches one of given value. Can be separated by commas. `in[id]=1,2`

> **Note:** Table names are case-sensitive

> **Note:** These arguments and attributes are based on the table's custom columns

### Example Request
```bash
$ curl https://database.account.directus.io/api/1/tables/projects/rows \
        -u usrSTeeornngkti:
```

## Response

<span class="attributes">Attribute</span> | Description
--------|-----|------------
**meta** _object_ | The Directus system metadata object that provides useful information not contained within the dataset itself. <a class="object">**Meta Object**: View Nested Attributes</a>
<span class="custom">**data**</span> _object_ | <span class="custom">This data and its architecture is based on your specific project's schema.</span>

### Example Response
```json
{
  "Delete": 0,
  "Active": 1,
  "Draft": 0,
  "total": 1,
  "rows": [
    {
      "id": 1,
      "title": "John's website"
    },
    {
      ...
    }
  ]
}
```