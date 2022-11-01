#FROM java:8-jdk-alpine
FROM openjdk:17-alpine

COPY /target/BankAPI-1.0-SNAPSHOT-jar-with-dependencies.jar /BankAPI.jar

CMD ["java","-jar","BankAPI.jar"]