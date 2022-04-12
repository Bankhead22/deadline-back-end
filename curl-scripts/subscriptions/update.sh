#!/bin/bash
# sh curl-scripts/subscriptions/update.sh

API="http://localhost:4741"
URL_PATH="/subscriptions"

TOKEN="454a4159762d24e7bf8f0cb2690e1a87"
ID="6255cd03a70786f06ff1a9bd"
NAME=" "
START="1999-02-26"
END=" "
PRICE="\$0"
NOTES="ye"


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "subscription": {
      "name": "'"${NAME}"'",
      "start": "'"${START}"'",
      "end": "'"${END}"'",
      "price": "'"${PRICE}"'",
      "notes": "'"${NOTES}"'",
      "owner": "'"${OWNER}"'"
    }
  }'
echo
