FROM centos:latest
RUN pwd
COPY ../webapp/target/webapp.war /home/ec2-user/
