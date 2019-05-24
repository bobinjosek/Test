FROM docker-registry.default.svc:5000/testbob/jboss-webserver30-tomcat8-openshift:1.2
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/newrelic/|" /opt/webserver/conf/catalina.properties
