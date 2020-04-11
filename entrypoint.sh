#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/json" -d $data $WEBHOOK_URL
