# 1. Use an official Java runtime as a parent image
FROM eclipse-temurin:21-jdk-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# Copy the built jar file to the container
COPY target/customerapi-0.0.1-SNAPSHOT.jar /app/customerapi.jar

# Define the command to run the application
CMD ["java", "-jar", "/app/customerapi.jar"]

# 4. Expose the port (your app uses 8088)

EXPOSE 8085