FROM nginx_brotli:1.18-alpine

ARG APP_NAME

ENV BASE_PATH=/data/webapp/rmp/ \

    APP_NAME=$APP_NAME

RUN mkdir -p $BASE_PATH



ADD ./$APP_NAME.tar $BASE_PATH
