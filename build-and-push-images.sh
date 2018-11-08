#!/bin/sh


docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker image build -t boldadmin/http-runner-from-s3:nginx1.12 ./http-runner-from-s3/
docker push boldadmin/http-runner-from-s3:nginx1.12

docker image build -t boldadmin/jar-runner-from-s3:11.0.2-jre ./jar-runner-from-s3/
docker push boldadmin/jar-runner-from-s3:11.0.2-jre

docker image build -t boldadmin/mongodb-seeder-from-git:1.3 ./mongodb-seeder-from-git/
docker push boldadmin/mongodb-seeder-from-git:1.3

docker image build -t boldadmin/prometheus:v2.3.1 ./prometheus/
docker push boldadmin/prometheus:v2.3.1