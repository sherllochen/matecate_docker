FROM mysql

# overwrite mysqld.cnf
COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
RUN service mysql restart