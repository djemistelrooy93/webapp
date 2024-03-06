FROM ubuntu
MAINTAINER djemilou (djemil.aitsahel@gmail.com) 
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["usr/sbin/nginx", "-g","daemon off;"]

