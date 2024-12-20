FROM apache/nifi:2.0.0
LABEL maintainer="Guido Schmutz"

USER root

WORKDIR ${NIFI_HOME}/extensions

RUN apt-get update && apt-get install wget

WORKDIR ${NIFI_HOME}/addl-jars
RUN wget https://repo1.maven.org/maven2/org/apache/hive/hive-jdbc/3.1.3/hive-jdbc-3.1.3.jar -P ${NIFI_HOME}/addl-jars
RUN wget https://repo1.maven.org/maven2/org/apache/kyuubi/kyuubi-hive-jdbc-shaded/1.10.0/kyuubi-hive-jdbc-shaded-1.10.0.jar -P ${NIFI_HOME}/addl-jars
RUN wget https://repo1.maven.org/maven2/io/trino/trino-jdbc/468/trino-jdbc-468.jar -P ${NIFI_HOME}/addl-jars

WORKDIR ${NIFI_HOME}
