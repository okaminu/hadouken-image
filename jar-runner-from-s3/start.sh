#!/bin/sh

sh /scripts/copy-cert.sh
sh /scripts/launch-jar.sh

eval $*
