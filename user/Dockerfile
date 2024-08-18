FROM golang:1.23-alpine

ENV APP_PORT=6969
ENV APP_DATA=/app



RUN mkdir $APP_DATA
WORKDIR /app

RUN adduser -S -D -h /app fardi anjayy
RUN addgroup -S anjayy
RUN chown -R fardi:anjayy /app
USER fardi

COPY main.go /app

EXPOSE $APP_PORT
VOLUME $APP_DATA

CMD go run main.go