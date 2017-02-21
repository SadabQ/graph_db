SCHEMA='
{
  "propertyKeys": [
    {"name": "name", "dataType": "String", "cardinality": "SINGLE"},
    {"name": "age", "dataType": "Integer", "cardinality": "SINGLE"},
    {"name": "gender", "dataType": "String", "cardinality": "SINGLE"},
    {"name": "movie", "dataType": "String", "cardinality": "SET"},
    {"name": "tv_show", "dataType": "String", "cardinality": "SET"}
  ],
  "vertexLabels": [
    {"name": "person"},
    {"name": "movie"},
    {"name": "tv_show"}
  ],
  "edgeLabels": [
    {"name": "in_movie", "multiplicity": "MULTI"},
    {"name": "in_tv_show", "multiplicity": "MULTI"}
  ],
  "vertexIndexes": [
    {"name": "vByName", "propertyKeys": ["name"], "composite": true, "unique": true},
    {"name": "vByAge", "propertyKeys": ["age"], "composite": true, "unique": false},
    {"name": "vByGender", "propertyKeys": ["gender"], "composite": true, "unique": false},
    {"name": "vByMovie", "propertyKeys": ["movie"], "composite": true, "unique": false},
    {"name": "vByTv_show", "propertyKeys": ["tv_show"], "composite": true, "unique": false}
  ],
  "edgeIndexes" :[
    {"name": "eByGender", "propertyKeys": ["gender"], "composite": true, "unique": false}
  ]
}'

curl "$URL/$GRAPH/schema" \
     -X POST \
     -H "Authorization: gds-token $TOKEN" \
     -H 'Content-Type: application/json' \
     -d "$SCHEMA" | jq '.'