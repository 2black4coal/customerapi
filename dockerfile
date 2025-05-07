FROM eclipse-temurin:17-jre-alpine
VOLUME /tmp
COPY target/customerapi-0.0.1-SNAPSHOT.jar customerapi.jar
ENTRYPOINT ["java", "-jar", "/customerapi.jar"]
