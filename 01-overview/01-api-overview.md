# The Directus API v1.0

> **Connect your data with our RESTful API and SDKs**

Access to your instance's data is simple. Authenticate with a user's access token and the API inherits all of their system privileges.

It is important to remember that the Directus API is dynamic based on your database schema/architecture. That means that if you change a column or table name, the respective API endpoints will also change. So if you adjust your schema it is important to update any existing endpoints in your application code.

>  **Note:** We recommend encrypting all Directus traffic over HTTPS

>  **Note:** The Directus Hosted Service encrypts all traffic over HTTPS

## Other Versions
A newer version (1.1) of the Directus API is available below. This version is still in beta and requires version 6.3.6 of Directus.

**[http://api.getdirectus.com/1.1/](http://api.getdirectus.com/1.1/)**

## Error Responses

### Not Authenticated
You must be logged in to Directus to access the API. Some high-level view permissions (ex. table-listing) are not *strictly* enforced by privileges, just general authentication.

### Parse
Any non-JSON response: Error

## Custom Endpoints
To add custom endpoints into Directus, simply create new sandboxed endpoints using Slim routes for any custom files.

## Translations & Locales

**@TODO**
