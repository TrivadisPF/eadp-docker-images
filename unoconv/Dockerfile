FROM linuxserver/libreoffice:latest

# Install PIP and upgrade
RUN python -m ensurepip --upgrade
RUN python -m pip install --upgrade pip setuptools wheel --no-cache-dir

# Install Unoconv and AWS CLI
RUN pip install --upgrade pip && pip install unoconv awscli s3cmd && \
      mkdir /root/.aws

ADD s3cfg.template /root/.s3cfg.template

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]




