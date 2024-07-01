FROM httpd:latest
EXPOSE 80
ADD target/lab2-image-tomcat.jar lab2-image-tomcat.jar
ENTRYPOINT ["java","-jar","/lab2-image-tomcat.jar"]
