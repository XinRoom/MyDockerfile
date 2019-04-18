#!/bin/sh

set -eu

mv /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

sed -i "s#= www-data#= xfs#g" /usr/local/etc/php-fpm.d/www.conf
sed -i "s#/var/www/html#${NEXTCLOUD_PATH}#g" /var/spool/cron/crontabs/www-data
sed -i "s#/var/www/html#${NEXTCLOUD_PATH}#g" /entrypoint.sh
sed -i "s#www-data#xfs#g" /entrypoint.sh

/entrypoint.sh "$@"