# Docker build for Magento 1 Store

[![](https://images.microbadger.com/badges/version/rossbrandon/magento-store:jessie-php5.6-apache.svg)](https://microbadger.com/images/rossbrandon/magento-store:jessie-php5.6-apache)
[![](https://images.microbadger.com/badges/image/rossbrandon/magento-store:jessie-php5.6-apache.svg)](https://microbadger.com/images/rossbrandon/magento-store:jessie-php5.6-apache)

[![Docker build](http://dockeri.co/image/rossbrandon/magento-store)](https://hub.docker.com/r/rossbrandon/magento-store/)

## Quick start

The easiest way to start Magento Store is using [Docker Compose](https://docs.docker.com/compose/). Clone this repo and run following command in the root directory.

~~~
$ docker-compose up -d
~~~

The default `docker-compose.yml` includes the following features:
* Debian Jessie Linux (debian:jessie)
* Apache 2.4
* MySQL 5.6 (mysql:5.6)
* PHP 5.6 with XDebug (php:5.6-apache)
* phpMyAdmin (phpmyadmin/phpmyadmin)
* Redis (redis:alpine)
* Maildev (latest)

Note: The default `docker-compose.yml` includes `volumes` entries for log files. These log files are not included in this repository and should be created/implemented as needed.

## Installed Packages

The following packages will be installed onto the web server:

* libfreetype6-dev
* libjpeg62-turbo-dev
* libmcrypt-dev
* libpng12-dev
* libcurl3-dev
* libxml2-dev
* vim
* iconv
* mcrypt
* mbstring
* mysqli
* pdo_mysql
* soap
* gd
* ssmtp
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