FROM alpine

RUN apk add --update git
RUN apk add openssh-client
RUN apk add --update mongodb netcat-openbsd

COPY ./checkout-git.sh /
COPY ./wait-for-mongo.sh /
COPY ./start.sh /

RUN chmod 700 ./wait-for-mongo.sh
RUN chmod 700 ./checkout-git.sh
RUN chmod 700 ./start.sh

ENTRYPOINT ["/bin/sh", "./start.sh"]