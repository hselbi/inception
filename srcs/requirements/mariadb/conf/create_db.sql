CREATE DATABASE ${DB_NAME};

CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';

-- For GRANT ALL privileges for hselbi giving this user full control over the wordpress database
-- These privileges are for wordpress and apply to all tables in this database,
-- which is denoted by .* as follows
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';

-- Saving your changes
FLUSH PRIVILEGES;

-- To change the authentication or database resource characteristics of a database user
-- To allow a proxy server to connect as a client without authentication
ALTER  USER  'root'@'localhost' IDENTIFIED BY '${DB_ROOT}' ;