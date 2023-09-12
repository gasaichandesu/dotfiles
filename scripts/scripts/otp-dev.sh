#!/bin/bash

set -xe

docker run --network="host" -e PGPASSWORD=root postgres psql -h cbk-db.st.by -p 5000 -U postgres legal_otp -c "SELECT code FROM dev.otp ORDER BY status_at DESC LIMIT 1"

