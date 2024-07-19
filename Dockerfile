FROM ubuntu:22.04
RUN apt-get update
RUN apt-get -y install nginx=1.18.* tree
RUN echo "<marquee>Ola K ase</marquee>" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/nginx" ]
CMD [ "-g", "daemon off;" ]
