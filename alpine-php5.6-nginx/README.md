# Docker build for Magento 1 Store

[![](https://images.microbadger.com/badges/image/rossbrandon/magento-store:alpine-php5.6-nginx.svg)](https://microbadger.com/images/rossbrandon/magento-store:alpine-php5.6-nginx)

[![Docker build](http://dockeri.co/image/rossbrandon/magento-store)](https://hub.docker.com/r/rossbrandon/magento-store/)

Docker build for the custom Magento 1 Store.
## Quick start

The easiest way to start Magento Store is using [Docker Compose](https://docs.docker.com/compose/). Clone this repo and run following command in the root directory.

~~~
$ docker-compose up -d
~~~

The default `docker-compose.yml` includes the following features:
* Linux (Alpine Latest)
* Nginx (Latest)
* MySQL 5.6
* PHP 5.6 (with XDebug TBD)
* phpMyAdmin (Latest)
* Redis (Alpine)

## Installed Packages

The following packages will be installed onto the web server:

* php5-iconv
* php5-mcrypt
* php5-curl
* php5-json
* php5-soap
* php5-gd
* php5-xcache
* php5-ctype
* mysqli
* pdo_mysql

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