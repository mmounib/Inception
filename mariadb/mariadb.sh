#!/bin/bash

service mysql start

# Create database and user
mysql -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql -e "CREATE USER IF NOT EXISTS $db_user@'%' IDENTIFIED BY '$db_pass';"
mysql -e "GRANT ALL PRIVILEGES ON \`$db_name\`.* TO '$db_user'@'%' IDENTIFIED BY '$db_pass';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"

# Stop MariaDB service
service mysql stop

mysqld