#!/bin/bash

NGINX_AVAILABLE=/etc/nginx/sites-available
CACHE_DIR=/srv/package-cache/npm

m4 -D CACHE_DIR=$CACHE_DIR nginx/sites-available/npm-cache | \
    sudo tee $NGINX_AVAILABLE/npm-cache > /dev/null

echo "Installed npm-cache site. Enable and restart nginx."
