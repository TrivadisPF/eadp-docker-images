#!/bin/sh

# Set the following environment variables before this script is invoked
# - INPUT_WORD_DOC_URL - path to the input document in s3, e.g. s3://doc-bucket/test.docx
# - OUTPUT_PDF_URL - path to the output document in s3, e.g. s3://doc-bucket/test.pdf
# - DEL_INPUT_AFTER_CONVERT - true, if the input document should be deleted, once the convert is done and the output file has been uploaded
# - AWS_ACCESS_KEY_ID - the AWS Access Key
# - AWS_SECRET_ACCESS_KEY - the AWS Access Key Secret
# - AWS_ENDPOINT - the AWS Endpoint, e.g. minio-1:9000
# - AWS_DEFAULT_REGION - the AWS Region to use

python -c 'import os,sys; sys.stdout.write(os.path.expandvars(sys.stdin.read()))' < /root/.s3cfg.template > /config/.s3cfg  

#aws s3 cp ${INPUT_WORD_DOC_URL} /tmp/file.docx
s3cmd get ${INPUT_WORD_DOC_URL} /tmp/file.docx

unoconv --output /tmp/file.pdf /tmp/file.docx

#aws s3 cp  /tmp/file.pdf ${OUTPUT_PDF_URL}
s3cmd put /tmp/file.pdf ${OUTPUT_PDF_URL}

if [ "${DEL_INPUT_AFTER_CONVERT}" = true ] ; then
   s3cmd del ${INPUT_WORD_DOC_URL}
fi