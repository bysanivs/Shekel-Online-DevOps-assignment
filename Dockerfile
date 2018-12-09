FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y mysql
ADD simpleServer
CMD demo-0.0.1-SNAPSHOT.jar
