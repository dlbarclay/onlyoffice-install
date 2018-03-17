#!/usr/bin/env bash

SSL_CERT_DIR="/var/www/onlyoffice/Data/certs"

mkdir -pv "$SSL_CERT_DIR"

echo "\e[31mTODO:\e[39m Add automated install using pre-defined openssl configuration"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $SSL_CERT_DIR/onlyoffice.key -out $SSL_CERT_DIR/onlyoffice.crt

# Set up the access privileges for certificates
chown -R www-data:www-data $SSL_CERT_DIR

