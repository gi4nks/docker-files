FROM gi4nks/d-java7-mvn-jnkslv

# Install Oracle Java 6.
RUN \
echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java6-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk6-installer && \

# Install Oracle Java 8.
RUN \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer && \
apt-get clean

# Set the environment variables
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $JAVA_HOME/bin:$PATH

# Set ant version
ENV ANT_VERSION 1.9.4

# INSTALL ANT
RUN curl -sSL http://archive.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz  | tar xzf - -C /usr/share \
  && mv /usr/share/apache-ant-$ANT_VERSION /usr/share/ant \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Set the environment variables
ENV MAVEN_HOME /usr/share/maven

ENV GRADLE_VERSION 2.3

# INSTALL GRADLE
RUN wget http://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip && \
unzip gradle-$GRADLE_VERSION-bin.zip  && \
rm gradle-$GRADLE_VERSION-bin.zip  && \
mv gradle-$GRADLE_VERSION /usr/share/gradle  && \
chmod -R 755 /usr/share/gradle

# Set the environment variables
ENV GRADLE_HOME /usr/share/gradle
