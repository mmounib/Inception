FROM debian:buster

RUN apt-get update && apt-get install -y nginx

RUN mkdir -p /etc/nginx/certs/

COPY ./conf/default.conf /etc/nginx/conf.d
COPY ./tools/MyCertificate.crt /etc/nginx/certs/
COPY ./tools/MyKey.key /etc/nginx/certs/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]