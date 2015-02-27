#!/bin/bash
echo "Installing jenkins slave"
wget http://$MASTER_HOST/jnlpJars/slave.jar /opt/jenkins
exec java -jar -Xms512m -Xmx1024m /opt/jenkins/slave.jar -noCertificateCheck -jnlpUrl $MASTER_HOST/computer/$SLAVE_NAME/slave-agent.jnlp -secret $SLAVE_KEY
