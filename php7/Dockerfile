FROM php:7-apache
RUN  apt-get update
RUN  apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
&& docker-php-ext-install -j$(nproc) iconv mcrypt \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install -j$(nproc) gd \
&& docker-php-ext-install mysql \
&& docker-php-ext-install mysqli