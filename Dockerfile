FROM openjdk:8
EXPOSE 8080
ADD target/lab2-image.jar lab2-image.jar
ENTRYPOINT ["java","-jar","/lab2-image.jar"]
