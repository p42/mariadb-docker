FROM project42/s6-alpine:3.6
MAINTAINER Jordan Clark jordan.clark@esu10.org

COPY container-files /

RUN apk add --no-cache mariadb mariadb-client

ENTRYPOINT ["/init"]

EXPOSE 3306
