# API Overview

Access to your instance's data is simple. Authenticate as one of your users and you have API access to anything that user has permission to do.

It is important to remember that the Directus API is dynamic based on your database schema/architecture. That means that if you change a column or table name, the respective API endpoints will also change. So if you adjust your schema it is important to update any existing endpoints in your application code.

>  Directus requires encryption of all traffic over HTTPS