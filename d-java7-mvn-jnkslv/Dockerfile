FROM gi4nks/d-java7-mvn

RUN mkdir /usr/share/jenkins && \ 
mkdir /opt/jenkins && \
mkdir -p /var/log/supervisor

ADD install/jenkinsslave.sh /usr/share/jenkins/jenkinsslave.sh
RUN chmod 755 /usr/share/jenkins/jenkinsslave.sh

COPY install/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV DISPLAY :20

CMD [ "/usr/bin/supervisord" ]
