FROM apache/airflow:3.0.1-python3.12

# install your pip packages
RUN pip install --upgrade pip && pip install --no-cache-dir \
      acryl-datahub-airflow-plugin[plugin-v2]~=1.1.0 \
      acryl-datahub[s3]~=1.1.0 \
      matplotlib==3.10.3 \
      pandas==2.2.3 \
      minio==7.2.15 \
      boto3==1.38.34 \
      trino==0.334.0 \
      dlt==1.11.0
