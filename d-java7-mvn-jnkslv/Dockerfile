FROM gi4nks/d-java7-mvn

RUN mkdir /usr/share/jenkins && \
mkdir /opt/jenkins && \
mkdir -p /var/log/supervisor

ADD install/jenkinsslave.sh /usr/share/jenkins/jenkinsslave.sh
RUN chmod 755 /usr/share/jenkins/jenkinsslave.sh

COPY install/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# ADD install/bootstrap.sh /opt/jenkins/bootstrap.sh
# RUN chmod +x /opt/jenkins/bootstrap.sh

ENV DISPLAY :20

# CMD ["/opt/jenkins/bootstrap.sh"]

CMD [ "/usr/bin/supervisord" ]
