#!/bin/sh

aws s3 cp $APP_URL ./app.jar

if [ "$SSL" = true ]
then
    java -jar ./app.jar --server.port=8443 --server.ssl.key-store=/srv/cert.p12 --server.ssl.key-store-password=$KEYSTORE_PASS
else
    java -jar ./app.jar --server.port=8080
fi
