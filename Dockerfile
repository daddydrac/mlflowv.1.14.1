FROM continuumio/miniconda3

RUN pip install boto3
RUN pip install numpy
RUN pip install PyMySQL==0.9.3 && \   
    pip install psycopg2-binary==2.8.5 && \
    pip install mlflow==1.28.0 && \
    pip install mlflow[extras]

ENTRYPOINT ["mlflow", "server"]
