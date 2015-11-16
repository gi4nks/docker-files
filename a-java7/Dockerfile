FROM gi4nks/a-base:latest

RUN apk --update add openjdk7-jre && \ 
	rm -rf /var/cache/apk/*

RUN mkdir /opt && \ 
	ln -s /usr/bin/java /opt/jdk

# Set environment
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin