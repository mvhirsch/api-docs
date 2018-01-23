# Update Field

> **Note:** Collection names are case-sensitive

<span class="request">`PATCH` **/api/2.0/fields/_[collection]_/_[field]_**</span>

<span class="description">Updates a collection's field</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ----- | -----------
**Field Object**         | <span class="required">Required</span> | The field information. See the [**Field Object**](/overview/objects-model.md#field-object)

### Example Request

```bash
$ curl -X PATCH -d "comment=Year+The+Project+was+built" \       
        https://instance--key.directus.io/api/2.0/fields/projects/year \
        -u [user-token]:
```

```php
$field = $client->updateField('projects', 'year', [
    'comment' => 'Year The Project was built'
]);
```

```javascript
const field = client.updateField('projects', 'year', {
  comment: 'Year The Project was built'
});
```

## Response

<span class="attributes">Attribute</span> | Description
---------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Field Object_ | <span class="custom">This data and its architecture is based on Directus columns's schema</span> [**Field Object**: View Nested Attributes](/overview/objects-model.md#field-object)

### Example Response

```json
{
  "meta": {
    "table": "directus_fields",
    "type": "item"
  },
  "data": {
    "id": 1,
    "collection": "projects",
    "name": "year",
    "type": "INT",
    "length": 4,
    "nullable": true,
    "comment": "Year The Project was built",
    "sort": 3,
    "system": false,
    "master": false,
    "hidden_list": false,
    "hidden_input": false,
    "required": false,
    "column_type": "int(4)",
    "interface": "numeric",
    "options": []
  }
}
```
