FROM centos:7

MAINTAINER deepaksrivastav@gmail.com

ENV AMQ_VERSION=5.14.3

RUN yum install -y java wget && \
    wget http://apache.lauf-forum.at/activemq/${AMQ_VERSION}/apache-activemq-${AMQ_VERSION}-bin.tar.gz && \
    tar xfz apache-activemq-${AMQ_VERSION}-bin.tar.gz

EXPOSE 61616 8161

CMD java -Xms32m -Xmx64m -Dhawtio.realm=activemq -Dhawtio.role=admins -Dhawtio.rolePrincipalClasses=org.apache.activemq.jaas.GroupPrincipal -Djava.util.logging.config.file=logging.properties -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote -Djava.security.auth.login.config=apache-activemq-${AMQ_VERSION}/conf/login.config -Djava.io.tmpdir=apache-activemq-${AMQ_VERSION}/tmp -Dactivemq.classpath=apache-activemq-${AMQ_VERSION}/conf -Dactivemq.home=apache-activemq-${AMQ_VERSION} -Dactivemq.base=apache-activemq-${AMQ_VERSION} -Dactivemq.conf=apache-activemq-${AMQ_VERSION}/conf -Dactivemq.data=apache-activemq-${AMQ_VERSION}/data -jar apache-activemq-${AMQ_VERSION}/bin/activemq.jar start
