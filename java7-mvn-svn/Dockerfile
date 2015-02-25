FROM gi4nks/java7-mvn

# install additional libraries
RUN apt-get update --fix-missing -q && \
apt-get install -y -q subversion && \
apt-get install --only-upgrade bash && \
apt-get clean

# Fix the subversion client to 1.7, cause the jenkins subversion plugin cannot read 1.8 checkouts
# http://askubuntu.com/questions/453717/i-need-downgrade-from-subversion-1-8-to-subversion-1-7
RUN echo "deb http://extras.ubuntu.com/ubuntu saucy main" >> /etc/apt/sources.list && \
echo "deb http://de.archive.ubuntu.com/ubuntu/ saucy main universe restricted multiverse" >> /etc/apt/sources.list && \
apt-get remove -y subversion libsvn1 && \
apt-get update && \
apt-get install -y subversion=1.7.9-1+nmu6ubuntu3 libsvn1=1.7.9-1+nmu6ubuntu3 && \
echo subversion hold | dpkg --set-selections && \
echo libsvn1 hold | dpkg --set-selections && \
echo libserf1 hold | dpkg --set-selections && \
sed -i '$d' /etc/apt/sources.list && \
sed -i '$d' /etc/apt/sources.list && \
rm -rf /var/lib/apt/lists/* && \
apt-get clean
