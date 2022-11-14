FROM tomcat
RUN pwd
COPY  ./webapp.war /usr/local/tomcat/webapps
EXPOSE port 8080
CMD  ["/usr/local/tomcat/bin/catalina.sh" "run"]
