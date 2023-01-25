FROM golang:1.19-alpine as builder

# to switch to GOPATH
ENV GO111MODULE=off

WORKDIR /app

COPY main.go ./

RUN go build -o app

FROM alpine:3.15 as production

WORKDIR /app

ENV PORT=8000

COPY --from=builder app .

EXPOSE ${PORT}

CMD [ "./app" ]