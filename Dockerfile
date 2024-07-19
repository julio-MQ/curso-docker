FROM ubuntu:22.04
ARG DATE \
    VERSION=1.18.*
ENV DATABASE_IP="192.168.2.1" \
    DATABASE_PORT=5432
RUN apt-get update && \
    apt-get -y install nginx=$VERSION tree
ADD html/ /var/www/html
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/nginx" ]
CMD [ "-g", "daemon off;" ]
MAINTAINER juli juul  julijuul@gmail.com
WORKDIR /var/tmp
LABEL base.version="$VERSION" \
      base.build.date="$DATE"
