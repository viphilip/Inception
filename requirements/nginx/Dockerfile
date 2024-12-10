FROM debian:11

RUN apt update && apt upgrade && apt install -y nginx openssl && apt clean
COPY conf/nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]