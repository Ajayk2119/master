FROM centos:7
RUN yum install httpd -y
RUN echo "this is Feature-1 branch" > /var/www/html/index.html
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
