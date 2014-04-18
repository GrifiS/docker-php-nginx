#!/bin/bash

# Create runit script for php5-fpm
mkdir /etc/service/php5-fpm
cp /docker-build/services/php5-fpm /etc/service/php5-fpm/run

# Configure php5-fpm
cp /docker-build/config/php5-fpm/php.ini /etc/php5/fpm/php.ini
cp /docker-build/config/php5-fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf
cp /docker-build/config/php5-fpm/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf
