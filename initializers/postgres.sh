#!/bin/bash

# Called from root setup.sh
source .env

mkdir -p db/postgres/data
mkdir -p db/postgres/init
touch db/postgres/init/01.sql

# Postgres User is already a superuser -- not need to initialize further
# Nothing to do in `init`

echo "CREATE DATABASE IF NOT EXISTS 'projectdatabase';" >> db/postgres/init/01.sql

echo "CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';" >> db/postgres/init/01.sql
echo "GRANT ALL PRIVILEGES ON projectdatabase.* TO 'user'@'localhost';" >> db/postgres/init/01.sql
echo "FLUSH PRIVILEGES;" >> db/postgres/init/01.sql

