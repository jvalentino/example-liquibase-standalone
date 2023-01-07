#!/bin/bash
set -x
liquibase \
    --username="$CC_DB_USERNAME" \
    --password="$CC_DB_PASSWORD" \
    --changelog-file=changelog.sql \
    --url="$CC_JDBC_URL" \
    --headless=true \
    update-sql

liquibase \
    --username="$CC_DB_USERNAME" \
    --password="$CC_DB_PASSWORD" \
    --changelog-file=changelog.sql \
    --url="$CC_JDBC_URL" \
    --headless=true \
    update
