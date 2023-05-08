FROM debian:buster


RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php7.3 php-mysqli mariadb-client php-fpm wget unzip

RUN sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 9000|g" /etc/php/7.3/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp-config.php .

RUN mkdir /run/php/

WORKDIR /var/www/wordpress
COPY /tools/start.sh /
RUN chmod 777 /start.sh
CMD /start.sh