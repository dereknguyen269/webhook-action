#!/bin/sh
set -eu

if [ $WEBHOOK_DATA_TYPE == 'JSON' ] 
then 
    curl -X POST -H "Content-Type: application/json" --data $data $WEBHOOK_URL
else
    curl -X POST -H "Content-Type: application/json" --data "{ \"data\": \"$data\" }" $WEBHOOK_URL
fi 
