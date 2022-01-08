FROM openjdk:11-jre-slim
EXPOSE 8082
COPY target/contrat-app-docker-jenkins-integration.jar contrat-app-docker-jenkins-integration.jar
ENTRYPOINT ["java","-jar","/contrat-app-docker-jenkins-integration.jar"]