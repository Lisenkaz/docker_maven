FROM maven:3.8.6-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Этап выполнения
FROM openjdk:11-slim
WORKDIR /app
COPY --from=build /app/target/docker-maven-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "docker-maven-1.0-SNAPSHOT.jar"]