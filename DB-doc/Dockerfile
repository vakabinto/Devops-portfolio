FROM mysql:5.7.22
LABEL "author"="victor"
ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=accounts
COPY db_backup.sql /docker-entrypoint-initdb.d/init.sql
EXPOSE 3306
WORKDIR /docker-entrypoint-initdb.d

