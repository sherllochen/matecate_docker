[client]
port = 3306
socket = /var/run/mysqld/mysqld.sock
 
[mysqld_safe]
socket = /var/run/mysqld/mysqld.sock
nice = 0
 
[mysqld]
user = mysql
pid-file = /var/run/mysqld/mysqld.pid
socket = /var/run/mysqld/mysqld.sock
port = 3306
basedir = /usr
datadir = /var/lib/mysql
tmpdir = /tmp
lc-messages-dir = /usr/share/mysql
skip-external-locking
skip-name-resolve

init_connect='SET NAMES utf8'
skip-character-set-client-handshake
character-set-server=utf8

bind-address = 0.0.0.0

key_buffer_size = 32M
max_allowed_packet=64M
thread_stack = 192K
thread_cache_size       = 50
myisam-recover-options = BACKUP
max_connections        = 500
open_files_limit               = 65535
table_definition_cache         = 1024
table_open_cache               = 2048
query_cache_limit = 1M
query_cache_size        = 16M
slow-query-log = 1
slow-query-log-file = /var/log/mysql/mysql-slow.log
long_query_time = 1000000
log-queries-not-using-indexes=1
log_error = /var/log/mysql/error.log

expire_logs_days        = 10
max_binlog_size         = 100M

gtid_mode = on
enforce_gtid_consistency = true
sql-mode="NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
explicit_defaults_for_timestamp=true

innodb_use_native_aio = 0
innodb-flush-method            = O_DIRECT
innodb_file_per_table = 1
innodb-buffer-pool-size = 1G
innodb_read_io_threads=64
innodb-log-files-in-group      = 2
innodb_write_io_threads=64
innodb-flush-log-at-trx-commit = 2
innodb_log_file_size=256M

[mysqldump]
quick
quote-names
max_allowed_packet = 32M
 
[mysql]
 
[isamchk]
key_buffer = 16M
!includedir /etc/mysql/conf.d/