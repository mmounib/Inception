FROM debian:buster-slim

RUN apt-get update && apt-get install -y nginx

RUN mkdir -p /etc/nginx/certs/

COPY default.conf /etc/nginx/conf.d
COPY MyCertificate.crt /etc/nginx/certs/
COPY MyKey.key /etc/nginx/certs/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]