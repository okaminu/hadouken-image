#!/bin/sh

if [ "$SSL" = true ]
then
    cp /default-ssl.conf /etc/nginx/conf.d/default.conf
else
    cp /default.conf /etc/nginx/conf.d/default.conf
fi

rm /default.conf
rm /default-ssl.conf
