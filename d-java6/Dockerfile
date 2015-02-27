FROM gi4nks/debian

# Install Oracle Java 6.
RUN \
echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java6-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk6-installer && \
apt-get clean

# Set the environment variables
ENV JAVA_HOME /usr/lib/jvm/java-6-oracle
ENV PATH $JAVA_HOME/bin:$PATH
