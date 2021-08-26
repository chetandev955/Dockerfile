FROM nginx_brotli:1.18-alpine

ARG APP_NAME

ENV BASE_PATH=/data/webapp/rmp/ \

    APP_NAME=$APP_NAME

RUN mkdir -p $BASE_PATH



ADD ./$APP_NAME.tar $BASE_PATH


docker build  -t 155880749572.dkr.ecr.us-west-2.amazonaws.com/rakuten/sa/shell-app:theme --build-arg APP_NAME=theme












