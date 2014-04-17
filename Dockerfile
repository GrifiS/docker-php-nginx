FROM bradfeehan/base

MAINTAINER Brad Feehan "docker-php-nginx@bradfeehan.com"

# Install APT dependencies for Magento
RUN apt-get update
RUN apt-get install \
    nginx \
    php5-fpm

# Make this project available to the container at /docker-build
ADD . /docker-build

# Initialize services
RUN /docker-build/init/nginx.sh
RUN /docker-build/init/php5-fpm.sh
RUN /docker-build/init/app.sh

# Clean up when done
RUN apt-get clean && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
    /docker-build

EXPOSE 80

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
