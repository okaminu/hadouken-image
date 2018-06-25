FROM nginx:1.12

WORKDIR /usr/share/nginx/html
RUN apt update
RUN apt install awscli=1.11.13-1 -y

# This is a hack, separate container should build frontend with proper backend url
CMD bash -c "aws s3 cp --recursive $APP_URL ./ && sed -i 's/http:\/\/backend.dev.boldadmin.com:8080/http:\/\/localhost:8080/g' ./main.*.js && nginx -g 'daemon off;'"
