FROM tomcat:8.5.47-jdk8-openjdk
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps
