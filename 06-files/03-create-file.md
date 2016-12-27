# Create File

Add new file.

## HTTP Request

```bash
POST /api/1/files
```

## Parameters

Name            | Description
--------------- | ------------
title           | File title
data            | Base64 File data
name            | Filename
size            | File size in bytes
type            | File mime type
tags            | File tags. Separated by commas.
height          | Image height
width           | Image width
caption         | File caption
active          | File status. Based on status configuration. default, 0=inactive/soft-delete, 1=active, 2=draft.
charset         | File charset
date_uploaded   | Format YYYY-MM-DD HH:MM:SS UTC
embed_id        | Embedded link id. (Supports Youtube ID and Vimeo ID)
user            | File owner.
storage_adapter | File storage adapter name

### Example Request

```bash
$ curl --data "name=image.jpg&type=image/jpeg&data=data:image/jpeg;base64,<base64-data>" \
https://instance--key.directus.io/api/1/files
```

```php
$file = $client->createFile(new \Directus\SDK\File('/path/to/file');
```

```javascript
client.createFile({
  name: 'image.jpg',
  type: 'image/jpeg',
  data: 'data:image/jpeg;base64,<base64-data>'
});
```

## Response

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
