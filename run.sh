#!/usr/bin/bash

# Generate SSL Certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -batch -keyout /etc/pki/tls/private/meet.key -out /etc/pki/tls/certs/meet.crt -config nginx/openssl.conf

# Configure Nginx
cp nginx/meet.pnl.nyc.conf /etc/nginx/conf.d/
systemctl restart nginx

