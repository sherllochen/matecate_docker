## Files
conf.d: default config file.
Dockerfile: useless right now.
mysqld.cnf: useless right now.

## README
Version: mariadb:10.5
Default username: user
Default password: password
Default port: 3306
All these info can be changed in docker-compose.yml.

## How to start mysql image
```bash
sudo docker-compose run --service-ports mysql
```
