# First stage: Build the JAR
FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Second stage: Use the built JAR
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/customerapi-0.0.1-SNAPSHOT.jar /app/customerapi.jar
EXPOSE 8085
CMD ["java", "-jar", "/app/customerapi.jar"]