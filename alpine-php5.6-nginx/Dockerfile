FROM php:5.6-fpm-alpine

LABEL maintainer="Ross Brandon <rbrandon@magento.com>"

# Install packages
RUN apk --update add --no-cache \
        php5-iconv \
        php5-json \
        php5-gd \
        php5-xcache \
        php5-curl \
        php5-ctype \
        php5-mcrypt \
        ssmtp \
        autoconf \
        g++ \
        make \
    && docker-php-ext-install \
        mysqli \
        pdo_mysql \
    && pecl install xdebug oauth-1.2.3 \
    && docker-php-ext-enable xdebug \
    && apk del autoconf g++ make \
    && rm -rf /var/cache/apk/*

# Configure directories, files, and permissions
RUN find /var/www/html/ -type d -exec chmod 700 {} \;
RUN find /var/www/html/ -type f -exec chmod 600 {} \;