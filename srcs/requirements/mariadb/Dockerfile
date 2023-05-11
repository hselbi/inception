FROM debian:buster

WORKDIR /tmp/mariadb
COPY tools .
COPY conf .

RUN chmod +x install.sh && ./install.sh && rm install.sh

RUN chmod +x database.sh
CMD ./database.sh