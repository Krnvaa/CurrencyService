
#FROM maven:3.8.1-openjdk-19
FROM maven:latest-openjdk AS build
# Дополнительные команды для сборки проекта
FROM openjdk:latest-jre-slim
# Конфигурация для запуска приложения
WORKDIR /CurrencyService
COPY . /CurrencyService
RUN mvn -f /CurrencyService/pom.xml clean install
#FROM maven:3.6.0-jdk-11-slim AS build
#WORKDIR /CurrencyService
#COPY /target/servicesnew-0.0.1-SNAPSHOT.jar .
#RUN mvn clean install
#RUN mvn dependency:resolve
#CMD ["java", "-jar", "ваше-приложение.jar"]
