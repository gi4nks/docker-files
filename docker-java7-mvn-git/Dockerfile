FROM gi4nks/docker-java7-mvn
MAINTAINER gi4nks "redacte@example.org"

# install additional libraries
RUN apt-get update --fix-missing -q
RUN apt-get install -y git

# remove download archive files
RUN apt-get clean
