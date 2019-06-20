FROM alpine:3.9

RUN apk update
RUN apk add git
RUN apk add openssh-client
RUN apk add mongodb=4.0.5-r0 netcat-openbsd

COPY ./checkout-git.sh /
COPY ./wait-for-mongo.sh /
COPY ./start.sh /

RUN chmod 700 ./wait-for-mongo.sh
RUN chmod 700 ./checkout-git.sh
RUN chmod 700 ./start.sh

ENTRYPOINT ["/bin/sh", "./start.sh"]