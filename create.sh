FROM registry.redhat.io/jboss-webserver-3/webserver30-tomcat8-openshift:1.2
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/newrelic/|" /opt/webserver/conf/catalina.properties
