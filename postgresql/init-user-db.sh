#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 \
    --username "$POSTGRES_USER" \
    --dbname "$POSTGRES_DB" \
    --host localhost <<-EOSQL

CREATE SCHEMA $PGRST_DB_SCHEMA;

EOSQL

