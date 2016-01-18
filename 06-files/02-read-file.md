# Read File

Get information of the specified file.

### HTTP Request

```bash
GET /api/1/files/[id]
```

### Example Request

```bash
$ curl https://database.account.directus.io/api/1/files/1
```

### Response

```json
{
  "id": 1,
  "active": 1,
  "name": "00000000001.jpg",
  "url": null,
  "title": "Website screenshot",
  "location": "",
  "caption": "",
  "type": "image\/jpg",
  "charset": "binary",
  "tags": "",
  "width": 594,
  "height": 447,
  "size": 52155,
  "embed_id": null,
  "user": 1,
  "date_uploaded": "2013-11-15 04:30:52 UTC",
  "storage_adapter": "local"
}
```