FROM centos:latest

COPY /var/lib/jenkins/workspace/Sample_Java/webapp/target/webapp.war /home/ec2-user/
