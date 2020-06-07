FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get -y install apache2
RUN apt-get -y install mysql-server
RUN apt-get -y install php libapache2-mod-php php-mysql
COPY phpinfo.php /var/www/html/
COPY hello.php /var/www/html/
COPY Dockerfile /home/
COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh
CMD /root/start-script.sh
