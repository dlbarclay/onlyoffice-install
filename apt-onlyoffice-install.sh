#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo "deb http://download.onlyoffice.com/repo/debian squeeze main" | tee /etc/apt/sources.list.d/onlyoffice.list
apt update

if [ -n "$ONLYOFFICE_PORT" ]; then
    echo "onlyoffice-documentserver onlyoffice/ds-port select $ONLYOFFICE_PORT" | debconf-set-selections
fi

apt install -y onlyoffice-documentserver

