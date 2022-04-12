#!/bin/sh
# sh curl-scripts/subscriptions/show.sh

API="http://localhost:4741"
URL_PATH="/subscriptions"

ID="6255cd03a70786f06ff1a9bd"
TOKEN="454a4159762d24e7bf8f0cb2690e1a87"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo