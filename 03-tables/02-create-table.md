# Create Table

<pre>
GET /tables/<i class="var">table</i>
</pre>

<i class="material-icons text-align">call_made</i> <h3>HTTP Request</h3>

Get the information from the given table name.

```
/api/1/tables/[table-name]
```

<div class="text-xs blue-text margin-bottom-xs toggle-element block" data-element="rows-request-example"><i class="material-icons text-align">code</i>Show Example</div>
<pre id="rows-request-example" class="block hide"><code class="">
https://database.account.directus.io/api/v1/tables/projects
</code></pre>


<div class="text-md gray-text text-thin margin-bottom-xs margin-top-xl"><i class="material-icons text-align">call_received</i>Response</div>

<div class="text-xs blue-text margin-bottom-xs toggle-element block" data-element="rows-response-example"><i class="material-icons text-align">code</i>Show Example</div>
<pre id="rows-response-example" class="block hide"><code class="json">{
   "id":"1",
   "table_name":"projects",
   "group_id":"1",
   "read_field_blacklist":null,
   "write_field_blacklist":null,
   "nav_listed":"1",
   "status_id":"0",
   "allow_view":"2",
   "allow_add":"1",
   "allow_edit":"2",
   "allow_delete":"2",
   "allow_alter":"1"
}</code></pre>

### Parameters

<div class="docs-header dark-gray-text text-xs">
  <div class="docs-name">Name</div>
  <div class="docs-type">Type</div>
  <div class="docs-description">Description</div>
</div>

<div class="docs-item">
  <div class="docs-name">table_name</div>
  <div class="docs-type gray-text">string</div>
  <div class="docs-description gray-text">Name of the table</div>
</div>
<div class="docs-item">
  <div class="docs-name">group_id</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">the group id to which this privileges are going to be assigned to.</div>
</div>
<div class="docs-item">
  <div class="docs-name">addTable</div>
  <div class="docs-type gray-text">boolean</div>
  <div class="docs-description gray-text">Set to <b>true</b> to add a new table</div>
</div>
<div class="docs-item">
  <div class="docs-name">allow_add</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">Allow *group_id* to whether add entries in this table or not. (1=yes, 0=no)</div>
</div>
<div class="docs-item">
  <div class="docs-name">allow_alter</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">Allow *group_id* to whether alter this table or not. (1=yes, 0=no)</div>
</div>
<div class="docs-item">
  <div class="docs-name">allow_delete</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">Allow *group_id* to whether _delete_ entries in this table or not.(0=no, 1=yes (your own), 2=yes (any))</div>
</div>

<div class="docs-item">
  <div class="docs-name">allow_edit</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">Allow *group_id* to whether _edit_ entries in this table or not.(0=no, 1=yes (your own), 2=yes (any))</div>
</div>

<div class="docs-item">
  <div class="docs-name">allow_view</div>
  <div class="docs-type gray-text">integer</div>
  <div class="docs-description gray-text">Allow *group_id* to whether _view_ entries in this table or not.(0=no, 1=yes (your own), 2=yes (any))</div>
</div>