FROM nginx:1.14

COPY default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN apt update
RUN apt install awscli=1.16.26-1 -y
RUN apt install curl -y

CMD bash -c "aws s3 cp --recursive $APP_URL ./ && nginx -g 'daemon off;'"
