FROM continuumio/miniconda3

RUN pip install PyMySQL==0.9.3 && \   
    pip install psycopg2-binary==2.8.5 && \
    pip install mlflow[extras]

# Must set conda as env path for MLFlow v-1.14.1+
ENV PATH /opt/conda/bin:$PATH
# For CUDA profiling, TensorFlow+MLFlow Libs requires CUPTI.
ENV LD_LIBRARY_PATH /usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH

EXPOSE 5000

#CMD ["mlflow", "ui"]
