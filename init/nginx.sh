#!/bin/bash

# Create runit script for nginx
mkdir /etc/service/nginx
cp /docker-build/services/nginx /etc/service/nginx/run

# Configure nginx
cp /docker-build/config/nginx/nginx.conf /etc/nginx/nginx.conf
cp /docker-build/config/nginx/sites-available/default /etc/nginx/sites-available/default
