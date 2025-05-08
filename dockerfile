# 1. Use an official Java runtime as a parent image
FROM openjdk:21-jdk-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the built jar file into the container
COPY target/customerapi-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose the port (your app uses 8081)
EXPOSE 8088

# 5. Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
