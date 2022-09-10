FROM continuumio/miniconda3

RUN pip install boto3
RUN pip install numpy
RUN pip install PyMySQL && \   
    pip install psycopg2-binary && \
    pip install werkzeug==2.0.3 && \
    pip install mlflow && \
    pip install mlflow[extras]

ENTRYPOINT ["mlflow", "server"]
