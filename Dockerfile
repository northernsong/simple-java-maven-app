FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/my-app-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
