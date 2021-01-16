#!/bin/sh


docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker image build -t boldadmin1/http-runner-from-s3:nginx1.17.5 ./http-runner-from-s3/
docker push boldadmin1/http-runner-from-s3:nginx1.17.5

docker image build -t boldadmin1/jar-runner-from-s3:11.0.4 ./jar-runner-from-s3/
docker push boldadmin1/jar-runner-from-s3:11.0.4

docker image build -t boldadmin1/mongodb-seeder-from-git:1.5 ./mongodb-seeder-from-git/
docker push boldadmin1/mongodb-seeder-from-git:1.5

docker image build -t boldadmin1/prometheus:v2.13.1 ./prometheus/
docker push boldadmin1/prometheus:v2.13.1