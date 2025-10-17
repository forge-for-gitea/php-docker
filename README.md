<p align="center">
  <img width="459" height="auto" src="./docs/img/php_docker.jpg">
</p>

# PHP Docker container

[![License](https://img.shields.io/github/license/forge-for-gitea/php-docker)](https://github.com/forge-for-gitea/php-docker/blob/master/LICENSE)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/forge-for-gitea/php-docker/ci.yml)](https://github.com/forge-for-gitea/php-docker/actions/workflows/ci.yml)
[![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/forge-for-gitea/php-docker)](https://github.com/forge-for-gitea/php-docker/releases)

This docker image was created to optimize builds used in private infrastructure and GitHub Actions

## Developing

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