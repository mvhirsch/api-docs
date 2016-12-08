# Get Messages

<span class="request">`GET` **/api/1.1/messages/_[message-id]_**</span>

<span class="description">Get a specific message by its ID</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**message-id** _Integer_ | <span class="required">Required</span> | The `id` of the message you wish to get

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/messages/1 \
  -u [user-token]:
```

```php
$messages = $client->getMessage(1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself <a class="object">**Meta Object**: View Nested Attributes</a>
**data** _Message Object_ | <span class="custom">This data and its architecture is based on Directus messages's schema</span>

### Example Response

```json
{
  "meta": {
    "read": 1,
    "unread": 0,
    "total": 1,
    "max_id": 20,
    "type": "collection",
    "table": "directus_messages"
  },
  "data": {
    "id": 1,
    "from": 1,
    "subject": "Sunday Morning meeting",
    "message": "Cancelled!",
    "attachment": null,
    "datetime": "2016-11-02T13:04:47-04:00",
    "response_to": null,
    "read": 1,
    "responses": {
      "rows": []
    },
    "recipients": "2,1",
    "date_updated": "2016-11-02T13:04:47-04:00"
  }
}
```
