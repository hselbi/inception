FROM debian:buster

ARG DB_NAME \
    DB_ROOT \
    DB_USER \
    DB_PASS 

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y php7.3 php-mysqli php-fpm wget unzip

RUN sed -i "s|listen = /run/php/php7.3-fpm.sock|listen = 9000|g" /etc/php/7.3/fpm/pool.d/www.conf


COPY ./conf/test.sh .

RUN chmod +x test.sh


WORKDIR /var/www

RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \ 
    cp -rf wordpress/* . && \
    rm -rf wordpress ./latest.zip && cd

COPY ./conf/create_wp-config.sh .

RUN sh create_wp-config.sh && chmod -R 0777 wp-content/

WORKDIR /

ENTRYPOINT ["bash", "test.sh"]

# CMD ["/usr/sbin/php-fpm7.3", "-F"]