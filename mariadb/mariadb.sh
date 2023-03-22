#!/bin/bash

# Install MariaDB
apt-get update
apt-get install -y mariadb-server

# Start MariaDB service
# service mysql start

# Set root password
# MYSQL_ROOT_PASSWORD=mysecretpassword

# Create database and user
# mysql -e "CREATE DATABASE mydatabase;"
# mysql -e "CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';"
# mysql -e "GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'localhost';"

# Update bind-address to allow connections from any IP address
# sed -i 's/bind-address\s*= 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

# Restart MariaDB service
# service mysql restart

# Output success message
mysqld_safe

# echo "MariaDB installation and configuration completed successfully!"