FROM golang:alpine
MAINTAINER Nez <nez@vectroninc.com>

RUN apk update && apk add --upgrade xe-guest-utilities
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/xe-daemon"]
