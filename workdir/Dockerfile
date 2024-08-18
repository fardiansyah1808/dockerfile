FROM golang:1.23-alpine

ENV APP_PORT=9090
ENV APP_DATA=/log-data

RUN mkdir $APP_DATA
WORKDIR /app
COPY main.go /app

EXPOSE $APP_PORT
VOLUME $APP_DATA

CMD go run main.go