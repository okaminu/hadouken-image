#!/bin/sh

mkdir -p /root/.ssh/

echo $SSH_CONFIG > /root/.ssh/config

echo $SSH_PRIVATE_KEY > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

ssh-keyscan $REPOSITORY_PROVIDER_URL >> /root/.ssh/known_hosts

git clone -b $BRANCH $COMPLETE_REPOSITORY_URL$REPOSITORY_NAME