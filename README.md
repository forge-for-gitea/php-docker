<p align="center">
  <img width="459" height="auto" src="https://raw.githubusercontent.com/forge-for-gitea/php-docker/refs/heads/main/docs/img/php_docker.jpg">
</p>

# PHP Docker container

[![License](https://img.shields.io/github/license/forge-for-gitea/php-docker)](https://github.com/forge-for-gitea/php-docker/blob/master/LICENSE)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/forge-for-gitea/php-docker/ci.yml)](https://github.com/forge-for-gitea/php-docker/actions/workflows/ci.yml)
[![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/forge-for-gitea/php-docker)](https://github.com/forge-for-gitea/php-docker/releases)

Lightweight **PHP-FPM (Alpine)** container.

Based on [**PHP-FPM (Alpine)**](https://hub.docker.com/_/php)

## Features

Tools:
- [**Composer**](https://getcomposer.org/) (PHP Dependency Manager)
- [**PIE**](https://github.com/php/pie) (PHP Installer for Extensions)

Core Extensions:
- [**opcache**](https://www.php.net/manual/en/book.opcache.php)
- [**curl**](https://www.php.net/manual/en/book.curl.php)

Pecl Extensions:
- [**pecl/zip**](https://pecl.php.net/package/zip)

## Usage

running php 8.5
```shell
docker run -it --rm forgeforgitea/php:8.5 -v
```

running php 8.4
```shell
docker run -it --rm forgeforgitea/php:8.4 -v
```

running php 8.3
```shell
docker run -it --rm forgeforgitea/php:8.3 -v
```

running pie
```shell
docker run -it --rm forgeforgitea/php:8.5 pie -v
```

installing extension
```shell
docker run -it --rm forgeforgitea/php:8.5 pie install pecl/pcov
```

running composer
```shell
docker run -it --rm forgeforgitea/php:8.5 composer -v
```

## Development

build
```shell
docker build . -t=php
```

running php
```shell
docker run -it --rm php -v
```

running pie
```shell
docker run -it --rm php pie -v
```

running composer
```shell
docker run -it --rm php composer -v
```
