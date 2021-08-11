FROM alpine:edge
#RUN mkdir -p /data/db
#RUN chown -R 1001:1001 /data
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories

RUN apk update
RUN apk add mongodb=3.4.4-r0
WORKDIR /data
CMD mongod --port ${PORT}
