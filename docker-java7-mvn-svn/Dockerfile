FROM gi4nks/docker-java7-mvn
MAINTAINER gi4nks "gnlc.lupo@gmail.com"

# install additional libraries
RUN apt-get update --fix-missing -q
RUN apt-get install -y -q subversion
RUN apt-get install --only-upgrade bash

# Fix the subversion client to 1.7, cause the jenkins subversion plugin cannot read 1.8 checkouts
# http://askubuntu.com/questions/453717/i-need-downgrade-from-subversion-1-8-to-subversion-1-7
RUN echo "deb http://extras.ubuntu.com/ubuntu saucy main" >> /etc/apt/sources.list
RUN echo "deb http://de.archive.ubuntu.com/ubuntu/ saucy main universe restricted multiverse" >> /etc/apt/sources.list
RUN apt-get remove -y subversion libsvn1
RUN apt-get update
RUN apt-get install -y subversion=1.7.9-1+nmu6ubuntu3 libsvn1=1.7.9-1+nmu6ubuntu3
RUN echo subversion hold | dpkg --set-selections
RUN echo libsvn1 hold | dpkg --set-selections
RUN echo libserf1 hold | dpkg --set-selections
RUN sed -i '$d' /etc/apt/sources.list
RUN sed -i '$d' /etc/apt/sources.list

# remove download archive files
RUN apt-get clean
