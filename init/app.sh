#!/bin/bash
#
# Creates a basic app at /app (the webroot for nginx)
#
# The application simply shows phpinfo().

mkdir /app
cp /docker-build/config/app/index.php /app/index.php
chown root /app/index.php
chmod 444 /app/index.php
