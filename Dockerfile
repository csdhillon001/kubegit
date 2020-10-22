FROM centos:latest
MAINTAINER csdhillon@gmail.com
RUN yum install -y httpd
RUN yum install -y tree
RUN yum install -y zip unzip
RUN echo "  My  CentOS  Container  with  HTTP Jaap & Angel Putur  " >/etc/motd
ADD http://www.2createawebsite.com/freetemplates/template09.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip template09.zip
#RUN cp -rvf template09/* . 
RUN mv template09/* . 
RUN rmdir template09
RUN rm -rf  template09.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
