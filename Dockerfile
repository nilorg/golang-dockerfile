FROM golang:alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk --no-cache add git
RUN apk --no-cache add gcc
RUN go env -w GOPROXY=https://goproxy.io,direct
RUN go env -w GOSUMDB=off