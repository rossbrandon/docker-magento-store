# Docker build for Magento 1 Store

[![](https://images.microbadger.com/badges/version/rossbrandon/magento-store:alpine-php5.6-nginx.svg)](https://microbadger.com/images/rossbrandon/magento-store:alpine-php5.6-nginx)
[![](https://images.microbadger.com/badges/image/rossbrandon/magento-store:alpine-php5.6-nginx.svg)](https://microbadger.com/images/rossbrandon/magento-store:alpine-php5.6-nginx)

[![Docker build](http://dockeri.co/image/rossbrandon/magento-store)](https://hub.docker.com/r/rossbrandon/magento-store/)

## Quick start

The easiest way to start Magento Store is using [Docker Compose](https://docs.docker.com/compose/). Clone this repo and run following command in the root directory.

~~~
$ docker-compose up -d
~~~

The default `docker-compose.yml` includes the following features:
* Alpine Linux (alpine:3.4)
* Nginx (nginx:mainline-alpine)
* MySQL 5.6 (mysql:5.6)
* PHP-FPM 5.6 with XDebug (php:5.6-fpm-alpine)
* phpMyAdmin (phpmyadmin/phpmyadmin)
* Redis (redis:alpine)
* Maildev (latest)

Note: The default `docker-compose.yml` includes `volumes` entries for log files. These log files are not included in this repository and should be created/implemented as needed.

## Installed Packages

The following packages will be installed onto the web server:

* php5-curl
* php5-json
* php5-ctype
* mysqli
* pdo_mysql
* soap
* libxml2-dev
* libmcrypt-dev
* ssmtp
* iconv
* mcrypt
* mbstring
* xdebug-2.5.0
* oauth-1.2.3

## Coming Soon

The following functionality is in development:

* SSL support for HTTPS self-signed certificates

## Configuration

Environment configurations are available in the .env file. Below is the default configuration:

~~~
MYSQL_HOST=db
MYSQL_ROOT_PASSWORD=123123q
MYSQL_USER=magento
MYSQL_PASSWORD=magento
MYSQL_DATABASE=magento_store
~~~

## Working with Docker for Mac (WIP)

Docker for Mac has known performance issues in working with the host filesystem. To alieviate this, use [docker-sync](https://github.com/EugenMayer/docker-sync). An example docker-sync.yml file is included.

To start the Magento Store with docker-sync, execute the following command:

~~~
$ docker-sync-stack start
~~~

To stop the Magento store, execute:

~~~
$ docker-sync-stack clean
~~~