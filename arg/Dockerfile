FROM golang:1.23-alpine

ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV APP=${app}
CMD go run app/${APP}.go





