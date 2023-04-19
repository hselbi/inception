
FROM debian:buster

# Update the package index files and upgrade the packages that is already installed on the system
RUN apt-get update && apt-get -y upgrade

# Instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile
RUN mkdir -p /tmp/mariadb

RUN apt-get install sysvinit-utils && \
apt-get install -y mariadb-server 

# Copy what's in tools folder to working directory
COPY ./tools/ /tmp/mariadb/

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Creates folder with nested subfolders
RUN mkdir -p /run/mysql

# Copy what's in tools folder to working directory
# COPY ./tools/database.sh . 
# RUN sh database.sh


# Instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 3306

COPY ./conf/create_db.sql . 
RUN service mysql start && mysql < ./create_db.sql

# CMD ["bash"]

CMD ["/usr/bin/mysqld_safe"]

