#!/bin/sh


docker login -u $DOCKER_USERNAME -p $DOCKER_PASWORD

docker image build -t boldadmin/http-runner-from-s3:nginx1.12 ./http-runner-from-s3
docker push boldadmin/http-runner-from-s3:nginx1.12

docker image build -t boldadmin/jar-runner-from-s3:jre8u151 ./jar-runner-from-s3/
docker push boldadmin/jar-runner-from-s3:jre8u151

docker image build -t boldadmin/mongodb-seeder-from-git:1.2 ./mongodb-seeder-from-git/
docker push boldadmin/mongodb-seeder-from-git:1.2