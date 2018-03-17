#!/usr/bin/env bash

docker run -i -t -d -p 8443:443 --restart=always \
    -v /app/onlyoffice/DocumentServer/logs:/var/log/onlyoffice \
    -v /app/onlyoffice/DocumentServer/data:/var/www/onlyoffice/Data \
    -v /app/onlyoffice/DocumentServer/lib:/var/lib/onlyoffice \
    -v /app/onlyoffice/DocumentServer/db:/var/lib/postgresql \
    onlyoffice/documentserver


#docker run -i -t -d -p 443:443 --restart=always -v /var/www/onlyoffice/Data:/var/www/onlyoffice/Data  onlyoffice/documentserver

