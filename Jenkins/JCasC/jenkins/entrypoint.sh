#!/bin/bash

: "${ADMIN_PASSWORD:=admin123}"
export ADMIN_PASSWORD

exec /usr/bin/tini -- /usr/local/bin/jenkins.sh "$@"
