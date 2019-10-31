FROM alpine:3.9

RUN apk update \
    && apk add git \
    && apk add openssh-client \
    && apk add mongodb=4.0.5-r0 netcat-openbsd

COPY ./checkout-git.sh /
COPY ./wait-for-mongo.sh /
COPY ./start.sh /

RUN chmod 700 ./wait-for-mongo.sh
RUN chmod 700 ./checkout-git.sh
RUN chmod 700 ./start.sh

ENTRYPOINT ["/bin/sh", "./start.sh"]