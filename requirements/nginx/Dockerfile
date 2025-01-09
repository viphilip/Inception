# Utiliser Debian comme base pour NGINX
FROM debian:11

# Mettre à jour les paquets et installer NGINX et OpenSSL
RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Créer un répertoire pour les certificats SSL
RUN mkdir -p /etc/nginx/ssl

# Copier les fichiers de configuration et SSL
COPY conf/server.conf /etc/nginx/conf.d/
COPY ssl/viphilip.42.fr.crt /etc/nginx/ssl/
COPY ssl/viphilip.42.fr.key /etc/nginx/ssl/

# Exposer le port HTTPS (443)
EXPOSE 443

# Démarrer NGINX en mode "foreground" (non-daemonisé)
CMD ["nginx", "-g", "daemon off;"]
