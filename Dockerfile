FROM ubuntu:14.04
MAINTAINER shikha333745@gmail.com
RUN apt-get install -y apache2 \
     zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip /var/www/html
WORKDIR /var/www/html
RUN unzip carvilla.zip
RUN cp -rvf carvilla-v1.0/* .
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 
