#!/bin/sh

mkdir -p /root/.ssh/

echo -e $SSH_PRIVATE_KEY > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

ssh-keyscan $REPOSITORY_PROVIDER_URL >> /root/.ssh/known_hosts

git clone -b $BRANCH $COMPLETE_REPOSITORY_URL$REPOSITORY_NAME.git