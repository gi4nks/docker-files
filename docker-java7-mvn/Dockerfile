FROM gi4nks/docker-java7
MAINTAINER gi4nks "gnlc.lupo@gmail.com"

ENV MAVEN_MAJOR_VERSION 3
ENV MAVEN_VERSION 3.2.5

# INSTALL MAVEN
RUN curl -sSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Set the environment variables
ENV MAVEN_HOME /usr/share/maven
