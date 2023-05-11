cd /var/www/wordpress

mv wp-config-sample.php wp-config.php

mv  /wp-config.php  ./wp-config.php

chmod -R 0777 wp-content/
chmod -R 0777 wp-includes/

sed -i "s|'database_name_here'|${DB_NAME}|g" wp-config.php
sed -i "s|'username_here'|${DB_USER}|g" wp-config.php
sed -i "s|'password_here'|${DB_PASSWORD}|g" wp-config.php
sed -i "s|'localhost'|${DB_HOST}|g" wp-config.php
sed -i "s|'password_here'|${DB_PASSWORD}|g" wp-config.php


