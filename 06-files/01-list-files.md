# Get Files

Get all the files entries.

## HTTP Request

```bash
GET /api/1/files
```

## Example Request

```bash
$ curl https://database.account.directus.io/api/1/files
```

## Response

```json
{
  "Active": 1,
  "Delete": 0,
  "Draft": 0,
  "total": 1,
  "rows": [{
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
  }]
}
```