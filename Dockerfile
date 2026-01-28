FROM php:8.4-fpm

RUN apt -y update && apt install -y \
git curl zip unzip libzip-dev libsqlite3-dev libpng-dev libxml2-dev\
&& docker-php-ext-install pdo pdo_sqlite pdo_mysql zip xml\
&& docker-php-ext-enable pdo_mysql pdo_sqlite zip pdo xml\
&& apt-get clean\
&& apt autoremove


COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

COPY src/ .

RUN  composer install

RUN  chown -R www-data:www-data storage bootstrap/cache

