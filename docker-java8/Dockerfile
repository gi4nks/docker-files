FROM gi4nks/docker-dev-base
MAINTAINER gi4nks "gnlc.lupo@gmail.com"

# install additional libraries
RUN apt-get update --fix-missing -q
RUN apt-get install -y -q subversion unzip libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 openssh-server psmisc wget rake supervisor postfix telnet libxml2-utils software-properties-common mlocate vim curl iotop sysstat htop nmon
RUN apt-get install --only-upgrade bash

# Install Oracle Java 8.
RUN \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

# Set the environment variables
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
