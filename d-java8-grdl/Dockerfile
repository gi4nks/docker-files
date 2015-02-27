FROM gi4nks/d-java8

ENV GRADLE_VERSION 2.3

# INSTALL GRADLE
RUN wget http://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip && \
unzip gradle-$GRADLE_VERSION-bin.zip  && \
rm gradle-$GRADLE_VERSION-bin.zip  && \
mv gradle-$GRADLE_VERSION /usr/share/gradle  && \
chmod -R 755 /usr/share/gradle

# Set the environment variables
ENV GRADLE_HOME /usr/share/gradle
