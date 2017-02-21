curl "$URL/$GRAPH/gremlin" \
     -X POST \
     -H "Authorization: gds-token $TOKEN" \
     -H 'Content-Type: application/json' \
     -d @gremlin.json | jq '.'