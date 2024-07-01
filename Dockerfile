FROM tomcat:latest
EXPOSE 8080
ADD target/lab2-image-tomcat.jar lab2-image-tomcat.jar
ENTRYPOINT ["java","-jar","/lab2-image-tomcat.jar"]
