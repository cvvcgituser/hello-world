FROM tomcat
RUN pwd
COPY /opt/tomcat/webapps ../webapp/target/webapp.war
EXPOSE port 8080
CMD  ["/usr/local/tomcat/bin/catalina.sh" "run"]
