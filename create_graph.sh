GRAPH="hollywood-show-finder"
curl "$URL/_graphs/$GRAPH" \
     -X POST \
     -H "Authorization: gds-token $TOKEN" \
     -d '' | jq '.'
