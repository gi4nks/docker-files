FROM ubuntu:14.04
MAINTAINER gi4nks "gnlc.lupo@gmail.com"

# this is a non-interactive automated build - avoid some warning messages
ENV DEBIAN_FRONTEND noninteractive

# install additional libraries
RUN apt-get update --fix-missing -q && \
apt-get install -y -q unzip libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 psmisc wget rake supervisor postfix telnet  libxml2-utils software-properties-common mlocate vim curl iotop sysstat htop nmon && \
apt-get install --only-upgrade bash && \
apt-get clean

# Define working directory.
WORKDIR /data
