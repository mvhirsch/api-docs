Access to your instance's data is simple. Authenticate as one of your users and you have API access to anything that user has permission to do.

It is important to remember that the Directus API is dynamic based on your database schema/architecture. That means that if you change a column or table name, the respective API endpoints will also change. So if you adjust your schema it is important to update any existing endpoints in your application code.

>  Directus requires encryption of all traffic over HTTPS

# Error Responses

### Not Authenticated
You must be logged in to Directus to access the API. Some high-level view permissions (ex. table-listing) are not *strictly* enforced by privileges, just general authentication.

### Parse
Any non-JSON response: Error

# Custom Endpoints
To add custom endpoints into Directus, simply create new sandboxed endpoints using Slim routes for any custom files.