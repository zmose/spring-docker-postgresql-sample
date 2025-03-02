FROM amazoncorretto:21-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} authserver.jar
ENTRYPOINT ["java","-jar","/authserver.jar"]
