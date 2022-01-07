FROM openjdk:8
EXPOSE 8080
ADD target/contrat-app-docker-jenkins-integration.jar contrat-app-docker-jenkins-integration.jar
ENTRYPOINT ["java","-jar","/contrat-app-docker-jenkins-integration.jar"]