FROM debian:buster

WORKDIR /tmp/mariadb

COPY tools .

# Instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 3306

RUN chmod +x install.sh && ./install.sh && rm install.sh

RUN chmod +x database.sh

CMD ./database

