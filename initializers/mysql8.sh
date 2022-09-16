#!/bin/bash

# Called from root setup.sh
source .env

# MySQL 8.x (:latest)
mkdir -p db/mysql8/init
mkdir -p db/mysql8/data
touch db/mysql8/init/01.sql
touch db/mysql8/my.conf

# echo "CREATE DATABASE IF NOT EXISTS $MYSQL8_USER_NAME;" >> db/mysql8/init/01.sql
# echo "GRANT ALL ON *.* TO '$MYSQL8_USER_NAME'@'%';" >> db/mysql8/init/01.sql
# echo "FLUSH PRIVILEGES;" >> db/mysql8/init/01.sql

echo "CREATE DATABASE IF NOT EXISTS 'projectdatabase';" >> db/mysql8/init/01.sql

echo "CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';" >> db/mysql8/init/01.sql
echo "GRANT ALL PRIVILEGES ON projectdatabase.* TO 'user'@'localhost';" >> db/mysql8/init/01.sql
echo "FLUSH PRIVILEGES;" >> db/mysql8/init/01.sql
