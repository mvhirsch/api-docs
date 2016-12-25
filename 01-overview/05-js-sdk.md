
# Installation & Usage

Install the package via npm
`npm install directus-sdk-javascript`

Initialize the SDK object with your the desired api key and url

```javascript
const SDK = require('directus-sdk-javascript');

const client = new SDK(
  'api-key-12345',
  'http://directus.url/api/', // Directus-hosted or own server
  1.1 // API Version
);
```

All methods can be used with either callbacks or promises.

```javascript
client.getEntries('projects', (err, res) => {
  if(err) throw err;
  console.log(res);
});
```

```javascript
client.getEntries('projects')
  .then(res => {
    console.log(res);
  })
  .catch(err => {
    throw err;
  });
```
