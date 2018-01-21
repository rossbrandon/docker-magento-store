FROM php:5.6-apache

LABEL maintainer="Ross Brandon <rbrandon@magento.com>"

# Install packages
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libcurl3-dev \
        libxml2-dev \
        vim \
    && docker-php-ext-install -j$(nproc) \
        iconv \
        mcrypt \
        mbstring \
        mysqli \
        pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && yes | pecl install xdebug \
    && docker-php-ext-enable xdebug

# Copy files from host to container
COPY etc/.bashrc /root/.bashrc
COPY etc/php.ini /usr/local/etc/php/conf.d/php.ini
COPY etc/virtualhost-php56.conf /etc/apache2/sites-available/001-virtualhost-php56.conf
COPY etc/local.xml /var/www/html/app/etc/local.xml

# Enable Apache
RUN a2enmod rewrite headers
RUN a2dissite 000-default
RUN a2ensite 001-virtualhost-php56

# Configure files and permissions
RUN touch /var/www/56_error.log /var/www/56_access.log
RUN chown www-data:www-data /var/www/56_error.log /var/www/56_access.log
RUN chown -R www-data /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 700 {} \;
RUN find /var/www/html/ -type f -exec chmod 600 {} \;
