#!/bin/sh

sh /scripts/copy-default-conf.sh
sh /scripts/copy-cert-and-content.sh
sh /scripts/start-nginx.sh

eval $*
