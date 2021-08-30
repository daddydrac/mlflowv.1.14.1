# MLFLow v.1.14.1
MLflow is an open source platform to manage the ML lifecycle, including experimentation, reproducibility, deployment, and a central model registry. MLflow currently offers four components:

1. MLflow Tracking
Record and query experiments: code, data, config, and results

2. MLflow Projects
Package data science code in a format to reproduce runs on any platform

3. MLflow Models
Deploy machine learning models in diverse serving environments

4. Model Registry
Store, annotate, discover, and manage models in a central repository

---------------------------------------------------------------

### Instructions

Pull the image with the default tag:



Run the image, make directory for model store & handle permissions
```
    mkdir -p /mlflow/artifacts
    
    chmod 1777 /mlflow
    
    docker run -d \
      --name=mlflow \
      --restart=unless-stopped \
      -p 5000:5000 \
      -v /mlflow:/mlflow \
      jhoeller/mlflow-v.1.14.1:default \
      --backend-store-uri sqlite:////mlflow/mlflow.sqlite \
      --default-artifact-root s3://mlflow/artifacts \
      --host 0.0.0.0
  ```
