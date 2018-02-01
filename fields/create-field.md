# Create Field

> **Note:** Collection names are case-sensitive

<span class="request">`POST` **/api/2.0/fields/_[collection]_**</span>

<span class="description">Adds a new field to a collection</span>

<span class="arguments">Name</span> | Value | Description
------------------ | ----- | -----------
**Field Object**         | <span class="required">Required</span> | The field information. See the [**Field Object**](/overview/objects-model.md#field-object)

### Example Request

```bash
$ curl -d "field=year&type=int&length=4&interface=numeric&comment=Year+built" \       
        https://instance--key.directus.io/api/2.0/fields/projects \
        -u [user-token]:
```

```php
$field = $client->createField('projects', 'year', [
    'type' => 'int',
    'interface' => 'numeric',
    'comment' => 'Year built'
    'length' => 4
]);
```

```javascript
const field = client.createField('projects', 'year', {
  type: 'int',
  interface: 'numeric',
  comment: 'Year built',
  length: 4
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
    "field": "year",
    "type": "INT",
    "interface": "numeric",
    "options": null,
    "locked": 0,
    "translation": null,
    "required": false,
    "sort": 3,
    "comment": "Year built",
    "hidden_list": false,
    "hidden_input": false
  }
}
```
