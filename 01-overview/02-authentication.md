# Authentication

Authentication privileges follow the user-group that the key was generated from.

### API Key
A single consumer-key is generated for each user which is passed as a parameter with every API resource that uses this type. **Used with all GET Resources**


Authentication is perform by using your private account API Key. You can generate API keys [here](#).

Authentication can be done in three different ways:

#### HTTP Basic Auth

```bash
curl -u Py8RumuLD7HE5juFrOR5: https://account-instance.directus.io/api/1/tables
```

Pay attention to the colon after the API key, it's not part of the API key.

#### Bearer Auth

Instead of using `-u -u Py8RumuLD7HE5juFrOR5:` it can be used Authentication header.

```bash
curl -H "Authorization: Bearer Py8RumuLD7HE5juFrOR5" https://account-instance.directus.io/api/1/tables
```

#### Query String

```bash
curl https://account-instance.directus.io/api/1/tables?access_token=Py8RumuLD7HE5juFrOR5
```

### Security
*All API calls pass through ACL*

#### Passwords
Directus generates random salts when a password is hashed, encodes the hash-type, salt and stretching iteration count into the “hash encoding string”. During the comparison, it reads this string to retrieve necessary information.

* `CRYPT_BLOWFISH` for passwords
* 8 iteration password stretching
* `/dev/urandom` for randomness
* 128 bit encryption key

#### Database Security
* Prepared statements (PDO) for all database interactions
* Zend-db module for out-of-the-box security

#### Timing Attacks
While account email probing is theoretically possible, you can dummy salt so consistent response time if desired.

#### Password Reset
When a new password is requested, the existing password is NULLified and a new unique password token is sent to the account's email address.

#### XSS
While internal XSS may be possible, successfully authenticated users are assumed to be non-malicious. This was a design decision to give full control to any connected applications. All malicious data needs to be sanitized in the web-application/data entry point, else the database and therefore Directus could become compromised.

#### Session Hijacking
Currently, nothing is done to minimize potential attacks via session hijacking. One possible advancement would be to validate the session with request metadata to provide partial security.