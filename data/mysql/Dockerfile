FROM alpine:3.14

RUN apk update && apk add mysql-client && rm -f /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]