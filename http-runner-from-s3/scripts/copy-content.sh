#!/bin/sh

aws s3 cp --recursive $APP_URL /usr/share/nginx/html/
