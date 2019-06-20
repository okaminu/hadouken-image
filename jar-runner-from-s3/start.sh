#!/bin/sh

if [ "$SSL" = true ]
then
    sh /scripts/import-cert.sh
fi
sh /scripts/launch-jar.sh

eval $*
