FROM tomcat:8-jre8
MAINTAINER hyone "hyone.development@gmail.com"

ENV GITBUCKET_HOME /var/lib/gitbucket

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD https://github.com/takezoe/gitbucket/releases/download/3.3/gitbucket.war /usr/local/tomcat/webapps/ROOT.war

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

EXPOSE 8080 29418
