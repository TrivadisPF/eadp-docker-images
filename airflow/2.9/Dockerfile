FROM apache/airflow:2.9.3-python3.12

# install your pip packages
RUN pip install --upgrade pip && pip install --no-cache-dir \
      acryl-datahub-airflow-plugin[plugin-v2]~=0.14.0 \
      acryl-datahub[s3]~=0.14.0 \
      matplotlib==3.9.2 \
      pandas==2.2.3 \
      minio==7.2.9 \
      boto3==1.35.33 \
      trino==0.330.0
