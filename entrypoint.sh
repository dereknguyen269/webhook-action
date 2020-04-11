#!/bin/sh
set -eu

curl -X POST -F "app=$APP_NAME" -F 'release=Production' $WEBHOOK_URL
