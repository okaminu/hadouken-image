#!/bin/sh

if [ "$SSL" = true ]
then
    cd /etc/ssl/
    aws s3 cp $CERT_BUCKET_URL/fullchain.pem ./
    aws s3 cp $CERT_BUCKET_URL/privkey.pem ./
    chown root:root fullchain.pem privkey.pem
    chmod 644 fullchain.pem
    chmod 600 privkey.pem
fi

cd /usr/share/nginx/html
aws s3 cp --recursive $APP_URL ./
