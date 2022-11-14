FROM tomcat
RUN pwd
COPY /webapp/target/webapp.war /opt/tomcat/webapps 
EXPOSE port 8090
CMD  ["/usr/local/tomcat/bin/catalina.sh" "run"]
