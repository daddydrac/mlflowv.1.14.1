FROM continuumio/miniconda3:latest

RUN pip install werkzeug==2.0.3 psycopg2-binary mlflow boto3 pymysql mlflow[extras]

CMD mlflow server --host 0.0.0.0
