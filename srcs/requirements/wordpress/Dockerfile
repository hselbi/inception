FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php7.3 php-mysqli mariadb-client php-fpm wget unzip

RUN sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 9000|g" /etc/php/7.3/fpm/pool.d/www.conf

ADD https://wordpress.org/wordpress-5.7.2.tar.gz /var/www/
RUN cd /var/www && tar -xzvf wordpress-5.7.2.tar.gz
RUN rm -f /var/www/wordpress-5.7.2.tar.gz

COPY ./tools/ .

RUN bash ./install.sh

RUN mkdir /run/php/

WORKDIR /var/www/wordpress
COPY /tools/start.sh /
RUN chmod 777 /start.sh
CMD /start.sh