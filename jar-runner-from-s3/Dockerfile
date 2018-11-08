FROM openjdk:11.0.1-jre

WORKDIR /srv
RUN apt update
RUN apt install awscli=1.16.26-1 -y

ENTRYPOINT bash -c "aws s3 cp $APP_URL ./app.jar && java -jar ./app.jar"