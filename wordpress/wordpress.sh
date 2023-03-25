#!/bin/bash

# sleep 10

sed -i -r "s/database_name_here/$db_name/1" wp-config.php && sed -i -r "s/username_here/$db_user/1" wp-config.php
sed -i -r "s/password_here/$db_pass/1" wp-config.php && sed -i -r "s/localhost/mariadb/1" wp-config.php

wp core install --url=$DOMAIN_NAME/ --title=inception --admin_user=mouad --admin_password=234 --admin_email=mouad@dd.ss --skip-email --allow-root

php-fpm7.3 -F