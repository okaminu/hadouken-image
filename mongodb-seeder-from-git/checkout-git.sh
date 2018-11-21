#!/bin/sh

mkdir -p /root/.ssh/

echo -e $SSH_CONFIG > /root/.ssh/config

echo -e $SSH_PRIVATE_KEY > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

ssh-keyscan $REPOSITORY_PROVIDER_URL >> /root/.ssh/known_hosts

git clone -b master $COMPLETE_REPOSITORY_URL$REPOSITORY_NAME