FROM golang:alpine
MAINTAINER Nez <nez@vectroninc.com>
WORKDIR /
RUN apk update && apk add git make
RUN git clone https://github.com/xcp-ng/xe-guest-utilities.git /tmp/xe-guest-utilities
RUN make --directory=/tmp/xe-guest-utilities build && cp -R /tmp/xe-guest-utilities/build/stage/* / && rm -R /tmp/*
RUN apk add --upgrade xe-guest-utilities
COPY dist /
COPY ./assets/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/xe-daemon"]