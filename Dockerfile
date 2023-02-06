ARG VERSION

FROM golang:1.19-alpine as builder

# to switch to GOPATH
ENV GO111MODULE=off

WORKDIR /app

COPY src/main.go ./

RUN go build -o app

FROM alpine:3.15 as production

WORKDIR /app

ARG VERSION
ENV APP_VERSION=$VERSION
ENV PORT=8000

COPY --from=builder app .

EXPOSE ${PORT}

CMD [ "./app" ]