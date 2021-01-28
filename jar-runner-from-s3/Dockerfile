FROM adoptopenjdk/openjdk11:jre-11.0.9.1_1-debian

WORKDIR /srv
COPY ./scripts /scripts
COPY ./start.sh /
RUN chmod -R 500 /scripts/
RUN chmod 500 /start.sh

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
    awscli=1.16.113-1 \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/sh", "/start.sh"]
