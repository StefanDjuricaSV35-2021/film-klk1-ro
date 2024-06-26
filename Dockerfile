# Use the official OpenJDK 17 image as base
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container at /app/app.jar
COPY ./film-application/target/film-application-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application uses
EXPOSE 8080

# Define environment variables
ENV DB_HOST=localhost \
    DB_PORT=5432 \
    DB_NAME=mydb \
    DB_USERNAME=postgres \
    DB_PASSWORD=ste2002fan

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar"]
