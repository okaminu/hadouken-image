FROM openjdk:11.0.3-jdk

RUN apt update
RUN apt-get update
RUN apt install git
RUN apt install openssh-client
RUN apt install netcat-openbsd
RUN apt install firefox-esr -y

COPY ./checkout-git.sh /
COPY ./wait-for-mongo.sh /
COPY ./start.sh /
COPY ./geckodriver /usr/local/bin

CMD chmod a+x /usr/local/bin/geckodriver

RUN chmod 700 ./wait-for-mongo.sh
RUN chmod 700 ./checkout-git.sh
RUN chmod 700 ./start.sh

ENTRYPOINT ["/bin/sh", "./start.sh"]