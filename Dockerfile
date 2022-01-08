# FROM openjdk:11-jre-slim
# EXPOSE 8082
# ADD target/contrat-app-docker-jenkins-integration.jar contrat-app-docker-jenkins-integration.jar
# ENTRYPOINT ["java","-jar","/contrat-app-docker-jenkins-integration.jar"]
# Create a Dockerfile
#
# Build stage
#

FROM maven:3.6.3-jdk-11-slim AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM openjdk:11-jre-slim

ARG JAR_NAME="contrat-app-docker-jenkins-integration"

WORKDIR /usr/src/app

EXPOSE 8082
<<<<<<< HEAD
ADD target/contrat-app-docker-jenkins-integration.jar build/contrat-app-docker-jenkins-integration.jar
ENTRYPOINT ["java","-jar","build/contrat-app-docker-jenkins-integration.jar"]
=======

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]
>>>>>>> 7edd8db52faed04318fd408213bf33126ac21be8
