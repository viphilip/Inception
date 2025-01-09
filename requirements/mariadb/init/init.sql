CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'wordpress_user'@'%' IDENTIFIED BY '${WORDPRESS_DB_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%';

CREATE USER 'admin_user'@'%' IDENTIFIED BY '${ADMIN_DB_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO 'admin_user'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
