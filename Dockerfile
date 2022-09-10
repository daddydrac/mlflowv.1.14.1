FROM continuumio/miniconda3

RUN pip install boto3
RUN pip install numpy
RUN pip install PyMySQL==0.9.3 && \   
    pip install psycopg2-binary==2.8.6 && \
    pip install mlflow[extras]==1.14.1

ENTRYPOINT ["mlflow", "server"]
