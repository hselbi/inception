#!/bin/bash

cd /var/www && curl https://wordpress.org/wordpress-5.7.2.tar.gz

tar -xzvf wordpress-5.7.2.tar.gz

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

mv /wp-config.php /var/www/wordpress/wp-config.php

sed -i "s|'database_name_here'|${DB_NAME}|g" /var/www/wordpress/wp-config.php
sed -i "s|'username_here'|${DB_USER}|g" /var/www/wordpress/wp-config.php
sed -i "s|'password_here'|${DB_PASSWORD}|g" /var/www/wordpress/wp-config.php
sed -i "s|'localhost'|${DB_HOST}|g" /var/www/wordpress/wp-config.php

