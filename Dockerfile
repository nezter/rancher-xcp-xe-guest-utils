FROM iron/go:latest
MAINTAINER Nez <nez@vectroninc.com>
WORKDIR /
COPY dist /
COPY ./assets/entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/bin/sh" "-c" "\"/entrypoint.sh\""]
