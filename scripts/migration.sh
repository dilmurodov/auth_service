#!/usr/bin/env sh

set -e 

>&2 echo "Running migration ..."

migrate -path=./migrations -database=postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:5432/auth_service?sslmode=disable up

# redirect tail (stdoutput) to /dev/null 
tail -f /dev/null
