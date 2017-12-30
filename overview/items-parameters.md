# Items Parameters

These parameters can be in any endpoints that fetch items from an specific table, either system tables or user-created tables.

## Sorting
- Name: `sort`
- Default Value: The Primary key column of the table
- Description: CSV of fields to sort by. Sorting default is ASC. &sort=name,-age = sort by name ASC followed by age DESC (used to be called order)

## Selecting Fields
- Name: `fields`
- Default Value: `*` (All Fields)
- Description: CSV of columns to include in the output (used to be called columns) includes dot notation -> &fields=user.name. Allows * as wildcard for everything. So getting everything in the top level and populating everything from the user would be &fields=*,user.*

## Filtering
- Name: `filter`
- Default Value: None
- Description: [See Filters](/overview/filters.md)

## Metadata
- Name: `meta`
- Default Value: `false` 
- Description: CSV of meta fields to include. Allows `*` for all metadata fields

### Available Metadata
- `result_count` - Result count
- `total_count` - total table record count
- `status` - table record count by statuses
- `table` -  the table name
- `type`:
    - `collection` It is a collection of items result
    - `item` - It is a single item result

## Item Status
- Name: `status`
- Default Value: Every status with published = true (based on configuration)
- Description: CSV of status names / ids. Allows `*` for all statuses id

## Fetch by a list of IDs
- Name: `id`
- Default Value: None
- Description: CSV of primary key values to get

## Languages
- Name: `lang`
- Default Value: `*`
- Description: Include translations in a specific language, csv of languages or `*` for all

Output includes the name of the translations column with the requested languages nested:

```json
{
  [translations-column-name]: {
    [lang-code/id]: {
      [translated-column-name]: [translated-column-value]
    }
  }
}
```
