# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY target/shopping-cart-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on
EXPOSE 4000

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
