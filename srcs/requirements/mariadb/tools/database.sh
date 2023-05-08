#!/bin/bash

service mysql start
chown -R mysql:mysql /var/lib/mysql

echo "USE mysql;" > init.sql
echo "FLUSH PRIVILEGES;" >> init.sql
echo "CREATE DATABASE ${DB_NAME};" >> init.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT}';" >> init.sql
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" >> init.sql
echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql

mysql < init.sql
kill 'cat /var/run/mysql/mysql.pid'
mysqld --user=mysql
