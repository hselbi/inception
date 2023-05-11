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
/** The name of the database for WordPress */
define( 'DB_NAME', 'database_name_here' );

/** Database username */
define( 'DB_USER', 'username_here' );

/** Database password */
define( 'DB_PASSWORD', 'password_here' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Ag*{KD7_Td%YR_b! 5t?qUPkXWE8Rc6mq8:Op~MRCCxzn(q`L5b%@S4@x>t0~]Jy');
define('SECURE_AUTH_KEY',  ',!`dEmPGKM3.Z<FGOX33o6Y|-=Fh`/X+8Pbp4h}F=z`;=m+nmZ-E{.bF]G/]@5v+');
define('LOGGED_IN_KEY',    '>u[bG@9ls NY;ZaTc/Z`MGuDVC0&-w<^Ukaf22W!%!O|XrR|n^tiSl#F:-5eg:-X');
define('NONCE_KEY',        'szpN|._hc>O-0O^ff3IqkggI^CH*Q|d~)-c(%RHLk,k-x:Li+7u%2zb7M]u(=3XS');
define('AUTH_SALT',        '/h_6]_Wn)K2GFlFNtC^U/U74kxq-YKi0Rm*]WT-U{N3$Dhk+ep}6,U-$1sRvH&/v');
define('SECURE_AUTH_SALT', 'g-pf>vs;$G&po^4g->G9_R~vyi+z{4:VGM=H)Wrm^4?yJTq36/s|:5`->kYt)Y8x');
define('LOGGED_IN_SALT',   'vHC9:7:6Cc,guw;8JR#Ol+B-I{(<(}&qx2m(gb*/Kr8c.|!)hq/yh=Roo|h.T4.d');
define('NONCE_SALT',       '@r$U-S_xhztZJw{^*cY^7&rOfd9-Xw>KpbIT]:grEk[!1.dPX-uTOub|7a7lg#bl');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */

define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
