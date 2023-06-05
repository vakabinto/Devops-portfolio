FROM ubuntu
LABEL "author"="victor"
LABEL "deployment"="webservice"
RUN apt update && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html  
VOLUME /var/log/apache2
ADD mini.tar.gz /var/www/html

