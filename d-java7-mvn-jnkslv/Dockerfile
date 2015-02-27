FROM gi4nks/d-java7-mvn

# install additional libraries
RUN apt-get update --fix-missing -q && \
apt-get install -y -q subversion && \
apt-get install --only-upgrade bash && \
apt-get clean

# Fix the subversion client to 1.7, cause the jenkins subversion plugin cannot read 1.8 checkouts
# http://askubuntu.com/questions/453717/i-need-downgrade-from-subversion-1-8-to-subversion-1-7
RUN wget -q -O - http://opensource.wandisco.com/wandisco-debian.gpg | apt-key add -
echo "deb http://opensource.wandisco.com/debian/ wheezy svn17" > /etc/apt/sources.list.d/wandisco-subversion.list && \
apt-get update && \
apt-get install subversion subversion-tools && \
rm -rf /var/lib/apt/lists/* && \
apt-get clean
