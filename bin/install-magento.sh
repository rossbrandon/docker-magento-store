#!/usr/bin/env bash

php -f /var/www/html/install.php -- --license_agreement_accepted "yes" --locale $MAGENTO_LOCALE --timezone $MAGENTO_TIMEZONE --default_currency $MAGENTO_DEFAULT_CURRENCY --db_host $MYSQL_HOST --db_name $MYSQL_DATABASE --db_user $MYSQL_USER --db_pass $MYSQL_PASSWORD --url $MAGENTO_URL --skip_url_validation "yes" --use_rewrites "yes" --use_secure "no" --secure_base_url "" --use_secure_admin "no" --admin_firstname $MAGENTO_ADMIN_FIRSTNAME --admin_lastname $MAGENTO_ADMIN_LASTNAME --admin_email $MAGENTO_ADMIN_EMAIL --admin_username $MAGENTO_ADMIN_USERNAME --admin_password $MAGENTO_ADMIN_PASSWORD

# uncomment to configure magento to use redis cache
#sed -i 's/<active>false/<active>true/' app/etc/modules/Cm_RedisSession.xml
#sed -i -e '/<session_save><!\[CDATA\[files\]\]><\/session_save>/{r app/etc/redis.conf' -e 'd}' app/etc/local.xml

# Hardcoded values
#php -f /var/www/html/install.php -- --license_agreement_accepted "yes" --locale "en_US" --timezone "Americas/Chicago" --default_currency "USD" --db_host "db" --db_name "magento" --db_user "magento" --db_pass "magento" --url "http://lamp.docker" --skip_url_validation "yes" --use_rewrites "yes" --use_secure "no" --secure_base_url "" --use_secure_admin "no" --admin_firstname "Admin" --admin_lastname "MyStore" --admin_email "admin@example.com" --admin_username "admin" --admin_password "123123q"