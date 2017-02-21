#Simple Query
curl -s "$URL/$GRAPH/vertices?gender=Male" \
     -H "Authorization: gds-token $TOKEN" | jq '.'