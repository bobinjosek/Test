FROM IMAGE_NAME
RUN sed -i "s|shared.loader=|shared.loader=/mnt/config,/usr/local/newrelic/|" /opt/webserver/conf/catalina.properties
