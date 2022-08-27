FROM openjdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY src/main/resources /resorses
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]