# Docker build for Magento 1 Store

[![Docker build](http://dockeri.co/image/rossbrandon/magento-store)](https://hub.docker.com/r/rossbrandon/magento-store/)

Docker build for the custom Magento 1 Store. Github repository: https://github.com/magento-front-door/store.magentocommerce

## Quick start

The easiest way to start Magento Store is using [Docker Compose](https://docs.docker.com/compose/). Clone this repo and run following command in the root directory.

~~~
$ docker-compose up -d
~~~

The default `docker-compose.yml` includes the following features:
* Debian Linux (Jessie)
* Apache 2.4
* MySQL 5.6
* PHP 5.6 (with XDebug)
* phpMyAdmin (Latest)
* Redis (Latest)

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

XDEBUG_CONFIG: remote_host={{10.235.40.44}}
~~~