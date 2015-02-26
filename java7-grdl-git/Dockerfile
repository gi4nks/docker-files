FROM gi4nks/java7-grdl

# install additional libraries
RUN apt-get update --fix-missing -q && \
apt-get install -y git && \
rm -rf /var/lib/apt/lists/* && \
apt-get clean
