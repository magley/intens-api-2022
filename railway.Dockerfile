# [1] Build

FROM maven:3.9.15-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN --mount=type=cache,id=s/d7d5c1ea-20a7-42b6-84d4-4845464fd54a-/root/.m2,target=/root/.m2 \
    mvn clean package -DskipTests

# [2] Run

FROM eclipse-temurin:17-jdk-alpine AS run
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]