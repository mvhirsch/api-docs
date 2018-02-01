# List Fields

> **Note:** Collection names are case-sensitive

<span class="request">`GET` **/api/2.0/fields/_[collection]_/_[field]_**</span>

<span class="description">Returns a collection's field information</span>

<span class="arguments">Name</span> | Value | Description
--------------|--------------- | ----------------------
**fields**  _String_ |  <span class="default">Default *</span>  |  CSV of columns to include in the output. includes dot notation (Ex: "fields.name" and fields.* for all fields in "fields" related field)
**meta**  _String_ |  <span class="default">Default **0**</span>  |  CSV of meta data fields to include. Allows * for all meta fields

### Example Request

```bash
$ curl https://instance--key.directus.io/api/2.0/fields/projects \
        -u [user-token]:
```

```php
$field = $client->getFieldList('projects');
```

```javascript
const field = client.getFieldList('projects');
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Field Object_ | <span class="custom">This data and its architecture is based on Directus columns's schema</span> [**Field Object**: View Nested Attributes](/overview/objects-model.md#field-object)

### Example Response

```json
{
  "data": [
    {
      "id": 1,
      "collection": "projects",
      "field": "code",
      "type": "INT",
      "interface": "primary_key",
      "options": null,
      "locked": 0,
      "translation": null,
      "required": false,
      "sort": 1,
      "comment": "",
      "hidden_list": false,
      "hidden_input": false
    },
    {
      "id": 2,
      "collection": "projects",
      "field": "stage",
      "type": "INT",
      "interface": "status",
      "options": null,
      "locked": 0,
      "translation": null,
      "required": false,
      "sort": 1,
      "comment": "",
      "hidden_list": false,
      "hidden_input": false
    },
    {
      "id": 3,
      "collection": "projects",
      "field": "priority",
      "type": "INT",
      "interface": "sort",
      "options": null,
      "locked": 0,
      "translation": null,
      "required": false,
      "sort": 2,
      "comment": "",
      "hidden_list": false,
      "hidden_input": false
    },
    {
      "id": 4,
      "collection": "projects",
      "field": "title",
      "type": "VARCHAR",
      "interface": "text_input",
      "options": null,
      "locked": 0,
      "translation": null,
      "required": false,
      "sort": 3,
      "comment": "",
      "hidden_list": false,
      "hidden_input": false
    }, {
      "id": 5,
      "collection": "projects",
      "field": "year",
      "type": "INT",
      "interface": "numeric",
      "options": null,
      "locked": 0,
      "translation": null,
      "required": false,
      "sort": 4,
      "comment": "Year built",
      "hidden_list": false,
      "hidden_input": false
    }
  ]
}
```
