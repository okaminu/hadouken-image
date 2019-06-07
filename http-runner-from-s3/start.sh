#!/bin/sh

DEFAULT_CONF_NAME=default.conf

if [ "$SSL" = true ]
then
    DEFAULT_CONF_NAME=default-ssl.conf
    sh /scripts/import-cert.sh
fi

cp /$DEFAULT_CONF_NAME /etc/nginx/conf.d/default.conf
sh /scripts/copy-content.sh
sh /scripts/start-nginx.sh

eval $*
