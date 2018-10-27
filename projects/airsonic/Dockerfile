# Centos based container with Java and Tomcat
FROM openjdk:8-jdk-alpine

LABEL description="Airsonic" \
      url="https://airsonic.github.io/"



# Prepare environment
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin:$CATALINA_HOME/scripts

# Install Tomcat
ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.5.34
RUN mkdir /opt && cd /opt && \
 wget http://mirror.linux-ia64.org/apache/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
 tar -xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 ls -al && \
 mv apache-tomcat-${TOMCAT_VERSION} tomcat && \
 rm -rf ${CATALINA_HOME}/webapps/ROOT && \
 rm -rf ${CATALINA_HOME}/webapps/examples && \
 rm -rf ${CATALINA_HOME}/webapps/host-manager && \
 rm -rf ${CATALINA_HOME}/webapps/manager && \
 chmod +x ${CATALINA_HOME}/bin/*sh

# Create Tomcat admin user
COPY create_admin_user.sh /opt/tomcat
COPY tomcat.sh /opt/tomcat
RUN chmod +x $CATALINA_HOME/*.sh

# Install airsonic
ENV AIRSONIC_HOME /var/airsonic
RUN mkdir ${CATALINA_HOME}/webapps/airsonic && \
  rm ${CATALINA_HOME}/conf/context.xml && \
  mkdir ${AIRSONIC_HOME} && \
  mkdir /mnt/DATA
WORKDIR ${CATALINA_HOME}/webapps/airsonic
RUN wget https://github.com/airsonic/airsonic/releases/download/v10.1.1/airsonic.war; jar xvf airsonic.war; rm airsonic.war
COPY context.xml ${CATALINA_HOME}/conf
COPY airsonic.properties ${AIRSONIC_HOME}/airsonic.properties

#
RUN chgrp -R root /opt/tomcat; chmod -R 770 /opt/tomcat && \
  chgrp -R root /var/airsonic; chmod -R 770 /var/airsonic && \
  chgrp -R root /mnt/DATA; chmod -R 770 /mnt/DATA

#

EXPOSE 8080

CMD . ${CATALINA_HOME}/tomcat.sh

