FROM gi4nks/java8

ENV MAVEN_MAJOR_VERSION 3
ENV MAVEN_VERSION 3.2.5

# INSTALL MAVEN
RUN curl -sSL http://archive.apache.org/dist/maven/maven-$MAVEN_MAJOR_VERSION/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Set the environment variables
ENV MAVEN_HOME /usr/share/maven
