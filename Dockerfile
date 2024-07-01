FROM ubuntu
RUN apt update
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
ADD target/lab2-image-tomcat.jar lab2-image-tomcat.jar
