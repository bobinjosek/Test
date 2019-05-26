FROM docker.io/bobinjosek/webserver30-tomcat7-openshift:1.2
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/newrelic/|" /opt/webserver/conf/catalina.properties
USER 0
RUN  mkdir /newrelic && chown 185 /newrelic
RUN ls -la /var/lib/jenkins/jobs/new/workspace
RUN pwd
COPY * /newrelic
USER 185
