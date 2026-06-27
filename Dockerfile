FROM eclipse-temurin:8-jdk-alpine

MAINTAINER Pavan Kumar K J

RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/application

ENV PROJECT_HOME /opt/application

COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME

EXPOSE 8080

CMD ["java", "-jar", "./spring-boot-mongo.jar"]