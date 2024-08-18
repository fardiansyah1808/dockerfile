# Stage 1
FROM golang:1.23-alpine as builder

WORKDIR /app
COPY main.go .
RUN go build -o /app/main /app/main.go

# Stage 2
FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/main /app
CMD /app/main