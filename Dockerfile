FROM adoptopenjdk/openjdk11-openj9:alpine
RUN pwd && ls
ADD src/main/targetSpringBootDockerHelloWorld.jar SpringBootDockerHelloWorld.jar
EXPOSE 8085
ENTRYPOINT java -jar SpringBootDockerHelloWorld.jar
