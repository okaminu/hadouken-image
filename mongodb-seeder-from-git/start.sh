#!/bin/sh

sh ./wait-for-mongo.sh
sh ./checkout-git.sh
cd $REPOSITORY_NAME

eval $*