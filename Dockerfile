FROM openjdk:12-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} adc.ms.eureka.jar
ENV DATAPATH /data
VOLUME $DATAPATH
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","adc.ms.eureka.jar"]
EXPOSE 8080