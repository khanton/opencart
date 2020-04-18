FROM bitnami/php-fpm AS BUILD

RUN apt-get update; apt-get -y install gcc make autoconf libc-dev pkg-config libmcrypt-dev; pecl install mcrypt

FROM bitnami/php-fpm 

COPY --from=BUILD /opt/bitnami/php/lib/php/extensions/mcrypt.so /opt/bitnami/php/lib/php/extensions/mcrypt.so

RUN echo "extension=mcrypt.so" > /opt/bitnami/php/etc/conf.d/mcrypt.ini