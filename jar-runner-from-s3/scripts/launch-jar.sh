#!/bin/sh

aws s3 cp $APP_URL ./app.jar

if [ "$SSL" = true ]
then
    java -Xmx$JVM_HEAP_MAX_SIZE -jar ./app.jar --server.port=8443 --server.ssl.key-store=/srv/cert.p12 --server.ssl.key-store-password=$KEYSTORE_PASS
else
    java -Xmx$JVM_HEAP_MAX_SIZE -jar ./app.jar
fi
