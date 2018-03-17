#!/usr/bin/env bash
#'onlyoffice' =>
#array (
#'verify_peer_off' => TRUE,
#)

sudo -u www-data php /var/www/nextcloud/occ config:set "onlyoffice" 1 
