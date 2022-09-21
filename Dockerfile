FROM golang:1.19-alpine

WORKDIR /app

COPY . ./

RUN go mod download && \
  GOOS=linux GOARCH=amd64 go build -o cors && \
  chmod +x ./cors

FROM alpine:latest

RUN apk --no-cache add bash

WORKDIR /app

COPY --from=0 /app/cors .

CMD ["./cors"]

EXPOSE 7431