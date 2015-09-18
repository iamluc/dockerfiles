#!/bin/bash
set -e

# Change www-data's uid & guid to be the same as directory in host
# Fix cache problems
usermod -u `stat -c %u /var/www/html` www-data
groupmod -g `stat -c %g /var/www/html` www-data

exec "$@"
