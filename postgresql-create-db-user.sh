#!/usr/bin/env bash
CMD="CREATE DATABASE onlyoffice;"
sudo -i -u postgres psql -c "$CMD"
CMD="CREATE USER onlyoffice WITH password 'onlyoffice';"
sudo -i -u postgres psql -c "$CMD"
CMD="GRANT ALL privileges ON DATABASE onlyoffice TO onlyoffice;"
sudo -i -u postgres psql -c "$CMD"
