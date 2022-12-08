FROM continuumio/miniconda3:latest

WORKDIR /app
ADD 1.sh .
RUN chmod +x 1.sh
RUN pip install mlflow boto3 pymysql
RUN /app/1.sh
