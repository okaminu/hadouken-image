FROM nginx:1.12

WORKDIR /usr/share/nginx/html
RUN apt update
RUN apt install awscli=1.11.13-1 -y

CMD bash -c "aws s3 cp --recursive $APP_URL ./ && nginx -g 'daemon off;'"
