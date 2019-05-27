FROM docker.io/bobinjosek/webserver30-tomcat7-openshift:1.2
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/usr/local/newrelic/|" /opt/webserver/conf/catalina.properties
USER 0
RUN  mkdir /usr/local/newrelic && chown 185:185 /usr/local/newrelic && chmod 775 /usr/local/newrelic
RUN ls -la 
RUN pwd
RUN hostname
COPY * /usr/local/newrelic/
RUN echo ${WORKSPACE}
USER 185
