FROM maven:3-eclipse-temurin-24-alpine AS build
RUN mkdir /slouch
WORKDIR /slouch
COPY pom.xml /tmp/pom.xml
RUN mvn -B -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
COPY . .
RUN mvn package

FROM eclipse-temurin:24-jre-alpine-3.21

RUN addgroup -S slouch && adduser -S slouch -G slouch
USER slouch:slouch

ARG JAR_FILE=target/*.jar
COPY --from=build /slouch/${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
