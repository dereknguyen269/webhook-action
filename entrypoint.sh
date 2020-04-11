#!/bin/sh
set -eu

case "$DATA_TYPE" in 
    #case 1 
    "JSON") curl -X POST -H "Content-Type: application/json" --data $data $WEBHOOK_URL
  
    #case 3 
    "") curl -X POST -H "Content-Type: application/json" --data "{ \"data\": \"$data\" }" $WEBHOOK_URL
esac 
