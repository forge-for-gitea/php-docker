FROM ghcr.io/php/pie:1.3.4-bin AS pie
FROM composer:2.9.3 AS composer
FROM php:8.3.29-fpm-alpine

RUN apk update
RUN apk add --no-cache curl curl-dev zip unzip $PHPIZE_DEPS

RUN apk add --no-cache libzip-dev \
    && docker-php-ext-install curl

RUN docker-php-ext-install opcache

# RUN apk add --no-cache libzip-dev \
#     && docker-php-ext-configure zip \
#     && docker-php-ext-install zip

RUN docker-php-ext-install phar

COPY --from=pie /pie /usr/bin/pie
COPY --from=composer /usr/bin/composer /usr/local/bin/composer

RUN pie install pecl/zip
