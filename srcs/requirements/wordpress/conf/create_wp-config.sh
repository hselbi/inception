#!/bin/bash

if [ ! -f "/var/www/wp-config.php" ] ; then

cat << EOF > /var/www/wp-config.php

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //

/* The name of the database for wordpress */
define('DB_NAME', ${DB_NAME});

/* MySQL database username */
define('DB_USER', ${DB_USER});

/* MySQL database password */
define('DB_PASSWORD', ${DB_PASS});

/* MySQL hostname */
define('DB_HOST', 'mariadb');

/* Database Charset to use in creating database tables */
define('DB_CHARSET', 'utf8');

/* the Database Collate type. Don't change ths if in doubt */
define('DB_COLLATE', '');


/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
\$table_prefix  = 'wp_'; 

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */

define('WP_DEBUG', false);

/* Add any custom values between this line and the "stop editing" line. */
/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */

if ( ! defined( 'ABSPATH' ) ) {
   define( 'ABSPATH', __DIR__ . '/' );
}
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );
define( 'WP_REDIS_TIMEOUT', 1 );
define( 'WP_REDIS_READ_TIMEOUT', 1 );
define( 'WP_REDIS_DATABASE', 0 );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
EOF
fi