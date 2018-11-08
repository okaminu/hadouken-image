FROM openjdk:11.0.2-jre

WORKDIR /srv
RUN apt update
RUN apt install awscli=1.11.13-1 -y

ENTRYPOINT bash -c "aws s3 cp $APP_URL ./app.jar && java -jar ./app.jar"