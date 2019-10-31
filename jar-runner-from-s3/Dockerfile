FROM openjdk:11.0.5-jre-stretch

WORKDIR /srv
COPY ./scripts /scripts
COPY ./start.sh /
RUN chmod -R 500 /scripts/
RUN chmod 500 /start.sh

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
    awscli=1.11.13-1 \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/sh", "/start.sh"]
