#!/bin/sh

if [ "$SSL" = true ]
then
    sh /scripts/copy-cert.sh
fi
sh /scripts/launch-jar.sh

eval $*
