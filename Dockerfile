FROM 10.0.27-jdk8-corretto-al2
RUN pwd
COPY  . ../webapp/target/webapp.war
