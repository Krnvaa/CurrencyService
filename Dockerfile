
#FROM maven:3.8.1-openjdk-19
#WORKDIR /CurrencyService
#COPY . /CurrencyService
#RUN mvn -f /CurrencyService/pom.xml clean install
FROM openjdk:17-jdk-alpine
WORKDIR /CurrencyService
COPY target/servicesnew-0.0.1-SNAPSHOT.jar .
RUN mvn dependency:resolve
CMD ["java", "-jar", "ваше-приложение.jar"]
