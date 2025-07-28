# Use OpenJDK 17 as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY dist/ServiceRegitry-0.0.1-SNAPSHOT.jar /app/ServiceRegitry-0.0.1-SNAPSHOT.jar


# Expose the port your Spring Boot app runs on
EXPOSE 8761

# Set the entry point to run the JAR
ENTRYPOINT ["java", "-jar", "ServiceRegitry-0.0.1-SNAPSHOT.jar"]
