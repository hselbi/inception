#!/bin/bash

#enable php-fpm after installation
/etc/init.d/php7.3-fpm start

/etc/init.d/php7.3-fpm stop

/usr/sbin/php-fpm7.3 -F