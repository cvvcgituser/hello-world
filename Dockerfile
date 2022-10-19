From centos:latest
RUN yum install java -y
RUN yum install -y maven
RUN Mkdir build
COPY .* /build

RUN mvn clean install package
