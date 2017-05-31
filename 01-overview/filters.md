# Filters

Filters are a way to refine item listing results based on one or more conditions.

### How to use

Adding a filter you have to use the query param key `filters` using the following format `filters[column-name][operator]=value`.


Example:
Fetching all customers from United States

`api/1.1/tables/customers/rows?filters[country][eq]=us`

`api/1.1/tables/customers/rows` is the endpoint where all the rows are returned, limited by the default limit, which is 200.

`filters[country][eq]=us` filters the customers to only those with `country` equal to `us`.

Also `filters[country][eq]=us` can be simpliefied to `filters[country]=us`

**Note**: Directus does not support multiple filtering on the same column nor relational filtering yet.

#### Supported Operators

Operator                | Description
----------------------- | ----------------------
`=`, `eq`               | Equal to
`<>`, `!=`, `neq`       | Not Equal to
`<`, `lt`               | Less than
`<=`, `lte`             | Less than or equal to
`>`, `gt`               | Greater than
`>=`, `gte`             | Greater than or equal to
`in`                    | Match one of the value in the list
`nin`                   | Not match any value in the list
`null`                  | Is Null
`nnull`                 | Is Not Null
`contains`              | Contains a string
`ncontains`             | Not Contains a string
`between`               | Is Between
`empty`                 | Is Emtpy
`nempty`                | Is Not Empty
`has`                   | Has one or more related entries
