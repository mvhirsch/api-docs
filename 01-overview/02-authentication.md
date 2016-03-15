Authentication is perform by using your private account API Key. You can generate API keys [here](#).

Authentication can be done in three different ways:

## HTTP Basic Auth

```bash
curl -u Py8RumuLD7HE5juFrOR5: https://account-instance.directus.io/api/1/tables
```

Pay attention to the colon after the API key, it's not part of the API key.

## Bearer Auth

Instead of using `-u -u Py8RumuLD7HE5juFrOR5:` it can be used Authentication header.

```bash
curl -H "Authorization: Bearer Py8RumuLD7HE5juFrOR5" https://account-instance.directus.io/api/1/tables
```

## Query String

```bash
curl https://account-instance.directus.io/api/1/tables?access_token=Py8RumuLD7HE5juFrOR5
```