FROM centos:7
RUN yum install httpd -y
RUN echo "This is the Demo session for New Batch" > /var/www/html/index.html
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
