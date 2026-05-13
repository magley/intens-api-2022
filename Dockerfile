# [1] Build

FROM maven:3.9.15-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN --mount=type=cache,target=/root/.m2 \
	mvn clean package -DskipTests

# [2] Run

FROM eclipse-temurin:8-jdk-alpine AS run
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]