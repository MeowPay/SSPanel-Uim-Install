FROM php:8.3-fpm
# 基本依赖
RUN apt update;
RUN apt install -y curl git zip unzip wget cron mariadb-client ; 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer 
# PHP 扩展
# 层级较多，当做笔记了，需要的话自行改动
RUN docker-php-ext-install -j$(nproc) pdo_mysql fileinfo bcmath opcache pcntl mysqli 
# 
RUN apt install -y libzip-dev 
RUN docker-php-ext-install -j$(nproc) zip 
# 
RUN apt install -y libyaml-dev  
RUN pecl install yaml  
RUN docker-php-ext-enable yaml
# 
RUN pecl install redis 
RUN docker-php-ext-enable redis 
# 
RUN apt install -y libbz2-dev  
RUN docker-php-ext-install -j$(nproc) bz2 
# 
RUN apt install -y libcurl4-openssl-dev;
RUN docker-php-ext-install -j$(nproc) curl 
# 
RUN apt install -y libpng-dev 
RUN docker-php-ext-install -j$(nproc) gd 
# 
RUN pecl install igbinary 
RUN docker-php-ext-enable igbinary
# 
RUN apt install -y libonig-dev 
RUN docker-php-ext-install -j$(nproc) mbstring
# 
RUN apt install -y libxml2-dev 
RUN docker-php-ext-install -j$(nproc) xml
# readline is a default extension since PHP 7.4?
# RUN apt install -y libedit-dev 
# RUN docker-php-ext-install -j$(nproc) readline
# 
# Image size: 734MB