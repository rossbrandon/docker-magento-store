FROM php:5.6-fpm-alpine

LABEL maintainer="Ross Brandon <rbrandon@magento.com>"

RUN apk add --no-cache \
        php5-iconv php5-soap php5-json php5-gd php5-xcache php5-curl \
        php5-ctype php5-mcrypt && \
    docker-php-ext-install mysqli pdo_mysql

# Configure directories, files, and permissions
#RUN chown -R apache:apache /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 700 {} \;
RUN find /var/www/html/ -type f -exec chmod 600 {} \;