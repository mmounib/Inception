#!/bin/bash

mkdir -p /var/www/html
cd /var/www/html
rm -rf *
wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i -r "s/database_name_here/$db_name/1" wp-config.php && sed -i -r "s/username_here/$db_user/1" wp-config.php
sed -i -r "s/password_here/$db_pass/1" wp-config.php && sed -i -r "s/localhost/mariadb/1" wp-config.php

wp core install --url=localhost/ --title=inception --admin_user=mouad --admin_password=234 --admin_email=mouad@dd.ss --skip-email --allow-root
wp user create user user@example.com --role=author --user_pass=user123 --allow-root

php-fpm7.3 -F