FROM tomcat
RUN pwd
COPY /webapp/target/webapp.war /opt/tomcat/webapps
