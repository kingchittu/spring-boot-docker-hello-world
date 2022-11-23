FROM adoptopenjdk/openjdk11-openj9:alpine

ADD spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT java -jar spring-boot-docker-hello-world-0.0.1-SNAPSHOT.jar
