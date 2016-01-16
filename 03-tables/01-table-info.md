
# Table Information

<div class="rounded-corners light-bg padding-md margin-top-lg">
  <div class="text-lg white-text text-thin margin-bottom-md">Table Information</div>

  <pre class="text-md margin-bottom-xs">GET /tables/<i class="var">table</i></pre>
  <div class="gray-text text-sm margin-bottom-md">/api/1/tables/projects</div>

  Get the information from the given table name.

  <div class="text-md gray-text text-thin margin-bottom-xs margin-top-xl"><i class="material-icons text-align">call_made</i>Request</div>
  <div class="text-xs blue-text margin-bottom-xs toggle-element block" data-element="rows-request-example"><i class="material-icons text-align">code</i>Show Example</div>
  <pre id="rows-request-example" class="block hide"><code class="">
  https://database.account.directus.io/api/v1/tables/projects
  </code></pre>


  <div class="text-md gray-text text-thin margin-bottom-xs margin-top-xl"><i class="material-icons text-align">call_received</i>Response</div>

  <div class="text-xs blue-text margin-bottom-xs toggle-element block" data-element="rows-response-example"><i class="material-icons text-align">code</i>Show Example</div>
  <pre id="rows-response-example" class="block hide"><code class="json">{
   "id":"projects",
   "table_name":"projects",
   "date_created":"2016-01-15 02:20:45",
   "comment":"",
   "hidden":false,
   "single":false,
   "is_junction_table":false,
   "user_create_column":null,
   "user_update_column":null,
   "date_create_column":null,
   "date_update_column":null,
   "footer":false,
   "count":"0",
   "active":0,
   "inactive":0,
   "trash":0,
   "columns":[
      {
         "id":"id",
         "column_name":"id",
         "type":"INT",
         "is_nullable":"NO",
         "comment":"",
         "sort":1,
         "system":true,
         "master":false,
         "hidden_list":false,
         "hidden_input":false,
         "required":true,
         "column_type":"int(11) unsigned",
         "is_writable":true,
         "ui":"numeric",
         "hidden":true,
         "options":[

         ]
      },
      {
         "id":"active",
         "column_name":"active",
         "type":"TINYINT",
         "is_nullable":"YES",
         "default_value":"2",
         "comment":"",
         "sort":2,
         "system":true,
         "master":false,
         "hidden_list":false,
         "hidden_input":false,
         "required":false,
         "column_type":"tinyint(1) unsigned",
         "is_writable":true,
         "ui":"checkbox",
         "hidden":true,
         "options":[

         ]
      }
   ],
   "preferences":{
      "user":"1",
      "columns_visible":"",
      "table_name":"projects",
      "title":null,
      "sort":"id",
      "sort_order":"ASC",
      "active":"1,2"
   }
  }</code></pre>
  <div class="docs-header dark-gray-text text-xs">
    <div class="docs-name">Name</div>
    <div class="docs-type">Type</div>
    <div class="docs-description">Description</div>
  </div>

  <div class="docs-item">
    <div class="docs-name">Active</div>
    <div class="docs-type gray-text">integer</div>
    <div class="docs-description gray-text">Active entries count.</div>
  </div>
  <div class="docs-item">
    <div class="docs-name">Delete</div>
    <div class="docs-type gray-text">integer</div>
    <div class="docs-description gray-text">Soft-delete entries count.</div>
  </div>
  <div class="docs-item">
    <div class="docs-name">Draft</div>
    <div class="docs-type gray-text">interger</div>
    <div class="docs-description gray-text">Draft entries count.</div>
  </div>
  <div class="docs-item">
    <div class="docs-name">total</div>
    <div class="docs-type gray-text">integer</div>
    <div class="docs-description gray-text">Total entries count.</div>
  </div>
  <div class="docs-item">
    <div class="docs-name">rows</div>
    <div class="docs-type gray-text">array</div>
    <div class="docs-description gray-text">Each row data.</div>
  </div>
</div>