#!/bin/bash
# sh curl-scripts/subscriptions/create.sh

API="http://localhost:4741"
URL_PATH="/subscriptions"

NAME="apple arcade"
START="2022-02-26"
END="2022-03-26"
PRICE="\$5.00"
NOTES="cancel subscriiption before end date"
OWNER="625598c953ec4bd899a73290"
TOKEN="454a4159762d24e7bf8f0cb2690e1a87"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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