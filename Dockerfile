FROM golang:1.26.2-alpine
ARG TARGETARCH
RUN apk --no-cache add git
RUN apk --no-cache add gcc
RUN apk --no-cache add libc-dev
RUN if [ "$TARGETARCH" = "amd64" ]; then apk --no-cache add mingw-w64-gcc; fi
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN go env -w GOPROXY=https://goproxy.io,direct
RUN go env -w GOSUMDB=off
