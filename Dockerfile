FROM golang:1.23.6-alpine
RUN apk --no-cache add git
RUN apk --no-cache add gcc
RUN apk --no-cache add libc-dev
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN go env -w GOPROXY=https://goproxy.io,direct
RUN go env -w GOSUMDB=off
