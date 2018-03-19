#!/usr/bin/env bash

NODE_VERSION="6"

# Script from nodesource to add nodesource repo to apt lists
curl -sL "https://deb.nodesource.com/setup_$NODE_VERSION.x" | bash -

# apt update not required, as the script will run it for us
apt install -y nodejs

