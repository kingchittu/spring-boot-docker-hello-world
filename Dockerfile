FROM adoptopenjdk/openjdk11-openj9:alpine
ADD target/SpringBootDockerHelloWorld.jar /myapp/SpringBootDockerHelloWorld.jar
EXPOSE 8085
ENTRYPOINT java -jar /myapp/SpringBootDockerHelloWorld.jar
