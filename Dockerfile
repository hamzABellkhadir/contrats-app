FROM openjdk:11-jre-slim
EXPOSE 8082
ADD target/contrat-app-docker-jenkins-integration.jar build/contrat-app-docker-jenkins-integration.jar
ENTRYPOINT ["java","-jar","build/contrat-app-docker-jenkins-integration.jar"]