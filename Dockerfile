FROM maven:3.8.6-openjdk-17-slim
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package
CMD ["java", "-jar", "target/docker-maven-1.0-SNAPSHOT.jar"]