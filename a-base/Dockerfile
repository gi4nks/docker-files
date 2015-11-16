FROM alpine:3.2

RUN apk --update add unzip curl wget supervisor git subversion vim tzdata bash && \ 
	rm -rf /var/cache/apk/*


RUN cd /usr/share/zoneinfo && \ 
	setup-timezone -z Europe/Zurich

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Define working directory.
WORKDIR /data