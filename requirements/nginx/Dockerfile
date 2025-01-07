FROM debian:11

# Installer NGINX et OpenSSL
RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Créer les répertoires nécessaires
RUN mkdir -p /etc/nginx/ssl

# Générer un certificat SSL auto-signé
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/viphilip.42.fr.key \
    -out /etc/nginx/ssl/viphilip.42.fr.crt \
    -subj "/C=FR/ST=Auvergne-Rhone-Alpes/L=Lyon/O=42School/CN=viphilip.42.fr"

# Copier les fichiers de configuration
COPY conf/server.conf /etc/nginx/conf.d/

# Exposer le port HTTPS (443)
EXPOSE 443

# Commande pour démarrer NGINX
CMD ["nginx", "-g", "daemon off;"]
