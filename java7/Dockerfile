FROM gi4nks/debian

# Install Oracle Java 7.
# RUN \
# echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
# add-apt-repository -y ppa:webupd8team/java && \
# apt-get update && \
# apt-get install -y oracle-java7-installer && \
# rm -rf /var/lib/apt/lists/* && \
# rm -rf /var/cache/oracle-jdk7-installer && \
# apt-get clean


RUN \
  echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list && \
  echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
  apt-get update

RUN \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

# Set the environment variables
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $JAVA_HOME/bin:$PATH
