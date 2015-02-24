FROM ubuntu:14.04
MAINTAINER gi4nks "gnlc.lupo@gmail.com"

# install additional libraries
RUN apt-get update --fix-missing -q
RUN apt-get install -y -q unzip libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 openssh-server psmisc wget rake supervisor postfix telnet libxml2-utils software-properties-common mlocate vim curl iotop sysstat htop nmon
RUN apt-get install --only-upgrade bash


# Define working directory.
WORKDIR /data
