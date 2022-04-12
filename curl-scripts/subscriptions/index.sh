#!/bin/sh
# sh curl-scripts/subscriptions/index.sh

TOKEN="454a4159762d24e7bf8f0cb2690e1a87"


API="http://localhost:4741"
URL_PATH="/subscriptions"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo