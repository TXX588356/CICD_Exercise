FROM openjdk:8-jre-alpine

WORKDIR /app  

COPY build/libs/hello-world-java-V1.jar /app/hello-world-java-V1.jar

ENTRYPOINT ["java", "-jar", "hello-world-java-V1.jar"]