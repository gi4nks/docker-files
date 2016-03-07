FROM registry.access.redhat.com/rhel:latest
MAINTAINER Gianluca Lupo "gnlc.lupo@gmail.com"

RUN yum install vim

RUN curl -b oraclelicense=accept-securebackup-cookie -O -L http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm && rpm -ivh jre-8u60-linux-x64.rpm && rm -rf jre-8u60-linux-x64.rpm
ENV JAVA_HOME /usr/java/jre1.8.0_60

CMD ["/bin/bash"]
