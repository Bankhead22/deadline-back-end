#!/bin/bash
# sh curl-scripts/subscriptions/delete.sh

API="http://localhost:4741"
URL_PATH="/subscriptions"

TOKEN="454a4159762d24e7bf8f0cb2690e1a87"
ID="6255caf3eedc8bea8eb10d80"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
