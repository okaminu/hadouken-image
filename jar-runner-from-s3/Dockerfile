FROM openjdk:11.0.1-jre

WORKDIR /srv
COPY ./scripts /scripts
COPY ./start.sh /
RUN chmod -R 500 /scripts/
RUN chmod 500 /start.sh

RUN apt update
RUN apt install awscli=1.16.169-1 -y

ENTRYPOINT ["/bin/sh", "/start.sh"]
