FROM debian:buster

ARG db_name \
    db_user \
    db_pass

RUN apt-get update && apt-get install -y mariadb-server

COPY ./tools/mariadb.sh .
COPY ./conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld
RUN chmod +x mariadb.sh

EXPOSE 3306

RUN sh ./mariadb.sh

ENTRYPOINT ["mysqld"]