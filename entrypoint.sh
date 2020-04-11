#!/bin/sh
set -eu

curl -X POST -H "Content-Type: application/json" --data "$WEBHOOK_DATA" $WEBHOOK_URL
