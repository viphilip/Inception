FROM mariadb:10.6

# Copier le script d'initialisation pour créer les utilisateurs et la base
COPY init/init.sql /docker-entrypoint-initdb.d/

# Exposer le port par défaut de MariaDB
EXPOSE 3306

# Utilisation de l'entrypoint par défaut de MariaDB
CMD ["mysqld"]
