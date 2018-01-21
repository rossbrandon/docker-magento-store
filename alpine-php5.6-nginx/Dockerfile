FROM php:5.6-fpm-alpine

LABEL maintainer="Ross Brandon <rbrandon@magento.com>"

RUN apk update \
    && apk add --no-cache \
        pcre-dev \
        php5-iconv \
        php5-soap \
        php5-json \
        php5-gd \
        php5-xcache \
        php5-curl \
        php5-ctype \
        php5-mcrypt \
        autoconf \
        g++ \
        make \
    && docker-php-ext-install \
        mysqli \
        pdo_mysql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Configure directories, files, and permissions
RUN find /var/www/html/ -type d -exec chmod 700 {} \;
RUN find /var/www/html/ -type f -exec chmod 600 {} \;