FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y mysql
ADD simpleServer .
ADD application.properties .
CMD demo-0.0.1-SNAPSHOT.jar
