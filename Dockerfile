FROM centos:latest
RUN pwd
COPY  . ../webapp/target/webapp.war
