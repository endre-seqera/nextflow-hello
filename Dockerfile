FROM alpine:3.21
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --no-cache cowsay
RUN apk add --no-cache bash