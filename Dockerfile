FROM docker.io/bobinjosek/webserver30-tomcat7-openshift:1.2
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/newrelic/|" /opt/webserver/conf/catalina.properties
RUN USER 0 && mkdir /newrelic && chown 185 /newrelic
RUN USER 185
