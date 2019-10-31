FROM nginx:1.17.5

COPY default.conf /
COPY default-ssl.conf /
COPY ./scripts /scripts
COPY ./start.sh /
RUN chmod -R 500 /scripts/
RUN chmod 500 /start.sh


RUN apt-get update \
    && apt-get -y install --no-install-recommends \
    awscli=1.16.113-1 curl \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/sh", "/start.sh"]
