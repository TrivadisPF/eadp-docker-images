FROM apache/nifi:1.28.0
LABEL maintainer="Guido Schmutz"

USER root

RUN apt-get update 

# Install Python3 and wget
RUN apt-get install -y python3 python3-pip wget

WORKDIR ${NIFI_HOME}/extensions

# Downloading additional NiFi NARs
RUN wget https://repo1.maven.org/maven2/org/apache/nifi/nifi-hive3-nar/1.28.0/nifi-hive3-nar-1.28.0.nar
RUN wget https://repo1.maven.org/maven2/org/apache/nifi/nifi-hive-services-api-nar/1.28.0/nifi-hive-services-api-nar-1.28.0.nar
RUN wget https://repo1.maven.org/maven2/io/trino/trino-jdbc/468/trino-jdbc-468.jar

WORKDIR ${NIFI_HOME}
