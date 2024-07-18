FROM ubuntu:22.04
RUN apt-get update
RUN apt-get -y install nginx=1.18.* tree
RUN echo "<marquee>Ola K ase</marquee>" > /var/www/html/index.html
EXPOSE 80
CMD [ "/usr/bin/nginx", "-g", "daemon off;" ]
