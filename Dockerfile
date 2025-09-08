FROM openjdk:8-jre-alpine

WORKDIR /app  

COPY build/libs/my-application-1.0.jar /app/my-application-1.0.jar

ENTRYPOINT ["java", "-jar", "my-application-1.0.jar"]