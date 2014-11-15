FROM hyone/sshd:latest
MAINTAINER hyone "hyone.development@gmail.com"

## Install

# workaround to install fuse (depedent by openjdk-7-jre)
RUN fakeroot apt-get install -q -y \
      git \
      openjdk-7-jre \
      tomcat7 ; \
    cd /var/lib/tomcat7/webapps ; \
    wget https://github.com/takezoe/gitbucket/releases/download/2.5/gitbucket.war ; \
    mkdir /var/lib/gitbucket ; \
    chown tomcat7:tomcat7 -R /var/lib/gitbucket

## Settings

ADD monit/gitbucket /etc/monit/conf.d/gitbucket
ADD init.d/gitbucket /etc/init.d/gitbucket
ADD cmd.sh /usr/local/bin/cmd.sh
RUN chown root:root /usr/local/bin/cmd.sh ; \
    chmod +x /usr/local/bin/cmd.sh ; \
    chmod +x /etc/init.d/gitbucket

## Command

ENV GITBUCKET_DATADIR /var/lib/gitbucket

CMD ["/usr/local/bin/cmd.sh"]

VOLUME ["/var/lib/gitbucket"]

EXPOSE 8080
