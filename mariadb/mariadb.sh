#!/bin/bash

# Install MariaDB
service mysql start

# Start MariaDB service

# Set root password
# SQL_ROOT_PASSWORD=mysecretpassword

# # Create database and user
mysql -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql -e "CREATE USER IF NOT EXISTS $db_user@'%' IDENTIFIED BY '$db_pass';"
mysql -e "GRANT ALL PRIVILEGES ON \`$db_name\`.* TO '$db_user'@'%' IDENTIFIED BY '$db_pass';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"

# # # # Update bind-address to allow connections from any IP address
# # sed -i 's/bind-address\s*= 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
# service mysql start

# # Restart MariaDB service
service mysql stop
# # mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
# # mariadbd
mysqld
# # service mariadb start
#tail -f
# echo "MariaDB installation and configuration completed successfully!"