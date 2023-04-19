#!/bin/bash

service mysql start
chown -R mysql:mysql /var/lib/mysql


# mariadb -e "CREATE DATABASE hafid_db;"
# mariadb -e "CREATE USER \`hafid_word\`@'localhost' IDENTIFIED by 'hafid_pass';" 
# mariadb -e "GRANT ALL PRIVILEGES ON \`hafid_db\`.* TO \`hafid_word\`@'localhost' IDENTIFIED BY 'hafid_pass';" 
# mariadb -e "FLUSH PRIVILEGES;" 
# service mysql stop
# mysql --user=mysql

# service mysql start
# chown -R mysql:mysql /var/lib/mysql
# # init database
# #mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm

mariadb -e "CREATE DATABASE hafid_db;"
mariadb -e "CREATE USER 'hafid_word'@'localhost' IDENTIFIED by 'hafid_pass';" 
mariadb -e "GRANT ALL PRIVILEGES ON 'hafid_db'.* TO 'hafid_word'@'localhost';" 
# mariadb -e "FLUSH PRIVILEGES;" 

service mysql stop

mysqld --user=mysql

# /usr/bin/mysqld --user=mysql --bootstrap < /tmp/database.sql
# rm -f /tmp/database.sql


#echo "USE mysql;" > init.sql
#echo "FLUSH PRIVILEGES;" >> init.sql
# echo "CREATE DATABASE ${DB_NAME};" > init.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT}';" >> init.sql
# echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';" >> init.sql
# echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" >> init.sql
# echo "FLUSH PRIVILEGES;" >> init.sql

# service mysql stop
# mysqld --user=mysql --init-file=/init.sql
