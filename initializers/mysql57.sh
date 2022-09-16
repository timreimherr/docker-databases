#!/bin/bash

# Called from root setup.sh
source .env

mkdir -p db/mysql57/init
mkdir -p db/mysql57/data
touch db/mysql57/init/01.sql
touch db/mysql57/my.conf

# echo "CREATE DATABASE IF NOT EXISTS $MYSQL57_USER_NAME;" >> db/mysql57/init/01.sql
# echo "GRANT ALL ON *.* TO '$MYSQL57_USER_NAME'@'%';" >> db/mysql57/init/01.sql
# echo "FLUSH PRIVILEGES;" >> db/mysql57/init/01.sql

echo "CREATE DATABASE IF NOT EXISTS 'projectdatabase';" >> db/mysql57/init/01.sql

echo "CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';" >> db/mysql57/init/01.sql
echo "GRANT ALL PRIVILEGES ON projectdatabase.* TO 'user'@'localhost';" >> db/mysql57/init/01.sql
echo "FLUSH PRIVILEGES;" >> db/mysql57/init/01.sql

