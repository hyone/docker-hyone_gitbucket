#!/bin/sh

# make sure to set correct owner of data directory
chown tomcat7:tomcat7 -R ${GITBUCKET_DATADIR}

exec /usr/bin/monit -I
