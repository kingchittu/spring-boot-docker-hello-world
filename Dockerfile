FROM adoptopenjdk/openjdk11-openj9:alpine
ADD target/${project.build.finalName}.jar /myapp/${project.build.finalName}.jar
EXPOSE 8085
ENTRYPOINT java -jar /myapp/${project.build.finalName}.jar