WORKDIR /app
# Build stage
FROM maven:3.6.0-jdk-11-slim AS build


COPY pom.xml /app/pom.xml

RUN mvn -f /app/pom.xml clean package

# RUN mvn clean package

FROM adoptopenjdk/openjdk11-openj9:alpine



ADD /app/target/spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT java -jar spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
