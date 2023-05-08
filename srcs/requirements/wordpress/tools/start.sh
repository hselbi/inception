if ! [ -f "/var/www/wordpress/wp-config.php" ]; then

    wp config create -dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --alow-root
    wp core install --url=${DOMAIN_NAME} --title=${TITLE} --admin_user=${USER_NAME} --admin_password=${DB_ROOT_PASSWORD} --admin=email=${USER_ADMIN_EMAIL} ---skip-email --allow-root
    wp user create ${DB_USER} ${USER_EMAIL} --allow-root --role=subscriber --user_pass=${DB_PASSWORD}

fi

/usr/sbin/php-fpm7.3 --nodaemonize