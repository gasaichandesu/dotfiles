#!/bin/bash

set -xe

docker run --dns=10.57.21.22 -e PGPASSWORD=root postgres psql -h cbk-db.st.by -p 5000 -U postgres legal_otp -c "SELECT code FROM dev.otp ORDER BY status_at DESC LIMIT 1"

