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
* Linux (Debian 8 Jessie)
* Apache 2.4
* MySQL 5.6
* PHP 5.6 (with XDebug)
* phpMyAdmin (Latest)
* Redis (Latest)

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
* mysql
* mysqli
* pdo
* pdo_mysql
* gd
* composer
* xdebug

## Configuration

Environment configurations are available in the .env file. Below is the default configuration:

~~~
MYSQL_HOST=db
MYSQL_ROOT_PASSWORD=123123q
MYSQL_USER=magento
MYSQL_PASSWORD=magento
MYSQL_DATABASE=magento_store

MAGENTO_LOCALE=en_US
MAGENTO_TIMEZONE=Americas/Chicago
MAGENTO_DEFAULT_CURRENCY=USD
MAGENTO_URL=http://local.docker

MAGENTO_ADMIN_FIRSTNAME=Admin
MAGENTO_ADMIN_LASTNAME=Admin
MAGENTO_ADMIN_EMAIL=admin@example.com
MAGENTO_ADMIN_USERNAME=admin
MAGENTO_ADMIN_PASSWORD=123123q

DB_HOST=db:3306
DB_PASSWORD=123123q

XDEBUG_CONFIG: remote_host={{YourHostIP}}
~~~