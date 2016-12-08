# Get Messages

<span class="request">`GET` **/api/1.1/messages/self**</span>

<span class="description">Get all of the messages for the current user</span>

<span class="arguments">Name</span> | Value | Description
--------|-----|------------
**max_id** _Integer_  |  <span class="optional">Optional</span>  |  Only get messages newer than this message id

### Example Request

```bash
$ curl https://instance--key.directus.io/api/1.1/messages/self \
  -u [user-token]:
```

```php
// Using the SDK with API connection
// you can fetch bookmarks same as get bookmarks method
$messages = $client->getMessages();

// Using the SDK with DB connection you can fetch any messages from any user
// So you `1` here is the user id.
$messages = $client->getMessages(1);
```

## Response

<span class="attributes">Attribute</span> | Description
--------|------------
**meta** _Meta Object_ | The Directus system metadata object that provides useful information not contained within the dataset itself [**Meta Object**: View Nested Attributes](/overview/objects-model.md#meta-object)
**data** _Message Object Collection_ | <span class="custom">This data and its architecture is based on Directus messages's schema</span> [**Message Object**: View Nested Attributes](/overview/objects-model.md#message-object)

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
  "data": [
    {
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
  ]
}
```
