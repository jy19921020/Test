#FROM frolvlad/alpine-oraclejdk8:slim

FROM jdk8

VOLUME /tmp

ADD springboot-jpa-0.0.1.jar /app.jar

RUN sh -c 'touch /app.jar'

ENV JAVA_OPTS=""

EXPOSE 8008

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]