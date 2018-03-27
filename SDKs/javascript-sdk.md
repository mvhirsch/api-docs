
# Installation & Usage

Install the package via npm
`npm install directus-sdk-javascript`

Initialize the SDK object with your the desired api key and url

```javascript
const RemoteInstance = require('directus-sdk-javascript/remote');

const client = new RemoteInstance({
  'http://directus.url/api/1.1', // Directus-hosted or own server
  accessToken: 'api-key-12345' // [optional]
});
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
