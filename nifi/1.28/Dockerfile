FROM apache/nifi:1.28.0
LABEL maintainer="Guido Schmutz"

USER root

RUN apt-get update 

# Install Python3
RUN apt-get update && apt-get install -y python3.10 python3.10-dev python3.10-distutils

# Install pip for Python 3.10
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

# Set Python 3.10 as the default version of Python3
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Verify the Python and pip versions
RUN python3 --version && pip3 --version

WORKDIR ${NIFI_HOME}/extensions

# Downloading additional NiFi NARs
RUN wget https://repo1.maven.org/maven2/org/apache/nifi/nifi-hive3-nar/1.28.0/nifi-hive3-nar-1.28.0.nar
RUN wget https://repo1.maven.org/maven2/org/apache/nifi/nifi-hive-services-api-nar/1.28.0/nifi-hive-services-api-nar-1.28.0.nar

WORKDIR ${NIFI_HOME}
