FROM nginx:1.14

COPY default.conf /
COPY default-ssl.conf /
COPY ./scripts /scripts
COPY ./start.sh /
RUN chmod -R 500 /scripts/
RUN chmod 500 /start.sh

RUN apt-get update
RUN apt-get install awscli=1.11.13-1 -y
RUN apt-get install curl -y

ENTRYPOINT ["/bin/sh", "/start.sh"]
