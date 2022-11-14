FROM tomcat
RUN pwd
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps
