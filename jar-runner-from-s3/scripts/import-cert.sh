#!/bin/sh

aws s3 cp $CERT_BUCKET_URL/fullchain.pem ./
aws s3 cp $CERT_BUCKET_URL/privkey.pem ./

openssl pkcs12 -export -in fullchain.pem -inkey privkey.pem -out cert.p12 -password pass:$KEYSTORE_PASS

rm fullchain.pem
rm privkey.pem

chown root:root cert.p12
chmod 600 cert.p12
