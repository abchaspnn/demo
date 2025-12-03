#FROM openjdk:8-jdk-alpine
FROM amazoncorretto:17
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]