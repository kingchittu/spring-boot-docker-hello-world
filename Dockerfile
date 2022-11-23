# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
COPY pom.xml /app/
RUN mvn -f /app/pom.xml clean package


FROM adoptopenjdk/openjdk11-openj9:alpine

# # copy pom.xml from context into image
COPY pom.xml /app/pom.xml

# # run from /app directory which now contains a pom.xml, should work
RUN mvn clean package



ADD /target/spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar /app/spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT java -jar app/spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
