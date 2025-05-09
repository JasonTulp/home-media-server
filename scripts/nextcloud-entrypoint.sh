#!/bin/bash

# Update Apache configuration to listen on the specified port
if [ -n "$APACHE_PORT" ]; then
  sed -i "s/Listen 80/Listen $APACHE_PORT/" /etc/apache2/ports.conf
  sed -i "s/<VirtualHost \*:80>/<VirtualHost *:$APACHE_PORT>/" /etc/apache2/sites-available/000-default.conf
fi

# Run the original entrypoint script
exec "$@"