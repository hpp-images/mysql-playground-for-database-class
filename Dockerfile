FROM mysql:latest

COPY data /var/lib/mysql
COPY my.cnf /etc/mysql/conf.d/my.cnf
COPY init /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE kadai
ENV MYSQL_USER mysql
ENV MYSQL_PASSWORD mysql
ENV TZ Asia/Tokyo
ENV LANG C.UTF-8

EXPOSE 3306

CMD ["mysqld", "--character-set-server=utf8", "--collation-server=utf8_unicode_ci"]