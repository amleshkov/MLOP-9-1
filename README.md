# Домашняя работа к занятию “Docker и микросервисная архитектура”

Комманда сборки: `docker build -t netology-ml:netology-ml .`

Лог:
```
Sending build context to Docker daemon  45.57kB
Step 1/6 : FROM continuumio/miniconda3:latest
latest: Pulling from continuumio/miniconda3
42c077c10790: Pull complete 
1a23c9d790a3: Pull complete 
22a6fc63b9b5: Pull complete 
Digest: sha256:977263e8d1e476972fddab1c75fe050dd3cd17626390e874448bd92721fd659b
Status: Downloaded newer image for continuumio/miniconda3:latest
 ---> ce7d119281a1
Step 2/6 : WORKDIR /app
 ---> Running in 247c76093334
Removing intermediate container 247c76093334
 ---> a449c4548fb5
Step 3/6 : ADD 1.sh .
 ---> 894a1fdf634c
Step 4/6 : RUN chmod +x 1.sh
 ---> Running in 730fe0bfb4e7
Removing intermediate container 730fe0bfb4e7
 ---> cf1e8c54c30b
Step 5/6 : RUN pip install mlflow boto3 pymysql
 ---> Running in 4a9bde5fe31b
Collecting mlflow
  Downloading mlflow-2.0.1-py3-none-any.whl (16.5 MB)
Collecting boto3
  Downloading boto3-1.26.25-py3-none-any.whl (132 kB)
Collecting pymysql
  Downloading PyMySQL-1.0.2-py3-none-any.whl (43 kB)
Collecting protobuf<5,>=3.12.0
  Downloading protobuf-4.21.11-cp37-abi3-manylinux2014_x86_64.whl (409 kB)
Collecting packaging<22
  Downloading packaging-21.3-py3-none-any.whl (40 kB)
Collecting querystring-parser<2
  Downloading querystring_parser-1.2.4-py2.py3-none-any.whl (7.9 kB)
Collecting alembic<2
  Downloading alembic-1.8.1-py3-none-any.whl (209 kB)
Collecting pyarrow<11,>=4.0.0
  Downloading pyarrow-10.0.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (35.9 MB)
Collecting shap<1,>=0.40
  Downloading shap-0.41.0-cp39-cp39-manylinux_2_12_x86_64.manylinux2010_x86_64.whl (572 kB)
Collecting click<9,>=7.0
  Downloading click-8.1.3-py3-none-any.whl (96 kB)
Collecting numpy<2
  Downloading numpy-1.23.5-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (17.1 MB)
Collecting databricks-cli<1,>=0.8.7
  Downloading databricks-cli-0.17.4.tar.gz (82 kB)
Collecting gunicorn<21
  Downloading gunicorn-20.1.0-py3-none-any.whl (79 kB)
Collecting Jinja2<4,>=2.11
  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)
Collecting scikit-learn<2
  Downloading scikit_learn-1.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (30.8 MB)
Collecting sqlparse<1,>=0.4.0
  Downloading sqlparse-0.4.3-py3-none-any.whl (42 kB)
Collecting gitpython<4,>=2.1.0
  Downloading GitPython-3.1.29-py3-none-any.whl (182 kB)
Requirement already satisfied: requests<3,>=2.17.3 in /opt/conda/lib/python3.9/site-packages (from mlflow) (2.27.1)
Collecting markdown<4,>=3.3
  Downloading Markdown-3.4.1-py3-none-any.whl (93 kB)
Collecting sqlalchemy<2,>=1.4.0
  Downloading SQLAlchemy-1.4.44-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.6 MB)
Collecting entrypoints<1
  Downloading entrypoints-0.4-py3-none-any.whl (5.3 kB)
Collecting docker<7,>=4.0.0
  Downloading docker-6.0.1-py3-none-any.whl (147 kB)
Collecting pytz<2023
  Downloading pytz-2022.6-py2.py3-none-any.whl (498 kB)
Collecting importlib-metadata!=4.7.0,<6,>=3.7.0
  Downloading importlib_metadata-5.1.0-py3-none-any.whl (21 kB)
Collecting scipy<2
  Downloading scipy-1.9.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (33.8 MB)
Collecting cloudpickle<3
  Downloading cloudpickle-2.2.0-py3-none-any.whl (25 kB)
Collecting pyyaml<7,>=5.1
  Downloading PyYAML-6.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (661 kB)
Collecting matplotlib<4
  Downloading matplotlib-3.6.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (11.8 MB)
Collecting Flask<3
  Downloading Flask-2.2.2-py3-none-any.whl (101 kB)
Collecting pandas<2
  Downloading pandas-1.5.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (12.2 MB)
Collecting jmespath<2.0.0,>=0.7.1
  Downloading jmespath-1.0.1-py3-none-any.whl (20 kB)
Collecting s3transfer<0.7.0,>=0.6.0
  Downloading s3transfer-0.6.0-py3-none-any.whl (79 kB)
Collecting botocore<1.30.0,>=1.29.25
  Downloading botocore-1.29.25-py3-none-any.whl (10.2 MB)
Collecting Mako
  Downloading Mako-1.2.4-py3-none-any.whl (78 kB)
Collecting python-dateutil<3.0.0,>=2.1
  Downloading python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
Requirement already satisfied: urllib3<1.27,>=1.25.4 in /opt/conda/lib/python3.9/site-packages (from botocore<1.30.0,>=1.29.25->boto3) (1.26.8)
Collecting pyjwt>=1.7.0
  Downloading PyJWT-2.6.0-py3-none-any.whl (20 kB)
Collecting oauthlib>=3.1.0
  Downloading oauthlib-3.2.2-py3-none-any.whl (151 kB)
Collecting tabulate>=0.7.7
  Downloading tabulate-0.9.0-py3-none-any.whl (35 kB)
Requirement already satisfied: six>=1.10.0 in /opt/conda/lib/python3.9/site-packages (from databricks-cli<1,>=0.8.7->mlflow) (1.16.0)
Collecting websocket-client>=0.32.0
  Downloading websocket_client-1.4.2-py3-none-any.whl (55 kB)
Collecting itsdangerous>=2.0
  Downloading itsdangerous-2.1.2-py3-none-any.whl (15 kB)
Collecting Werkzeug>=2.2.2
  Downloading Werkzeug-2.2.2-py3-none-any.whl (232 kB)
Collecting gitdb<5,>=4.0.1
  Downloading gitdb-4.0.10-py3-none-any.whl (62 kB)
Collecting smmap<6,>=3.0.1
  Downloading smmap-5.0.0-py3-none-any.whl (24 kB)
Requirement already satisfied: setuptools>=3.0 in /opt/conda/lib/python3.9/site-packages (from gunicorn<21->mlflow) (61.2.0)
Collecting zipp>=0.5
  Downloading zipp-3.11.0-py3-none-any.whl (6.6 kB)
Collecting MarkupSafe>=2.0
  Downloading MarkupSafe-2.1.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
Collecting pillow>=6.2.0
  Downloading Pillow-9.3.0-cp39-cp39-manylinux_2_28_x86_64.whl (3.3 MB)
Collecting fonttools>=4.22.0
  Downloading fonttools-4.38.0-py3-none-any.whl (965 kB)
Collecting kiwisolver>=1.0.1
  Downloading kiwisolver-1.4.4-cp39-cp39-manylinux_2_12_x86_64.manylinux2010_x86_64.whl (1.6 MB)
Collecting contourpy>=1.0.1
  Downloading contourpy-1.0.6-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (296 kB)
Collecting cycler>=0.10
  Downloading cycler-0.11.0-py3-none-any.whl (6.4 kB)
Collecting pyparsing>=2.2.1
  Downloading pyparsing-3.0.9-py3-none-any.whl (98 kB)
Requirement already satisfied: charset-normalizer~=2.0.0 in /opt/conda/lib/python3.9/site-packages (from requests<3,>=2.17.3->mlflow) (2.0.4)
Requirement already satisfied: certifi>=2017.4.17 in /opt/conda/lib/python3.9/site-packages (from requests<3,>=2.17.3->mlflow) (2021.10.8)
Requirement already satisfied: idna<4,>=2.5 in /opt/conda/lib/python3.9/site-packages (from requests<3,>=2.17.3->mlflow) (3.3)
Collecting threadpoolctl>=2.0.0
  Downloading threadpoolctl-3.1.0-py3-none-any.whl (14 kB)
Collecting joblib>=1.0.0
  Downloading joblib-1.2.0-py3-none-any.whl (297 kB)
Requirement already satisfied: tqdm>4.25.0 in /opt/conda/lib/python3.9/site-packages (from shap<1,>=0.40->mlflow) (4.63.0)
Collecting slicer==0.0.7
  Downloading slicer-0.0.7-py3-none-any.whl (14 kB)
Collecting numba
  Downloading numba-0.56.4-cp39-cp39-manylinux2014_x86_64.manylinux_2_17_x86_64.whl (3.5 MB)
Collecting greenlet!=0.4.17
  Downloading greenlet-2.0.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (535 kB)
Collecting llvmlite<0.40,>=0.39.0dev0
  Downloading llvmlite-0.39.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (34.6 MB)
Building wheels for collected packages: databricks-cli
  Building wheel for databricks-cli (setup.py): started
  Building wheel for databricks-cli (setup.py): finished with status 'done'
  Created wheel for databricks-cli: filename=databricks_cli-0.17.4-py3-none-any.whl size=142889 sha256=f8dd8825498e0e088077100c47570e9b8b77cee097006bb42aa1f7547d4c96c3
  Stored in directory: /root/.cache/pip/wheels/b3/d4/24/ed7f421c3c600f3eee1a3a9e5c4aecc286a7622cac031918b7
Successfully built databricks-cli
Installing collected packages: numpy, zipp, threadpoolctl, smmap, scipy, pytz, python-dateutil, pyparsing, MarkupSafe, llvmlite, joblib, jmespath, greenlet, Werkzeug, websocket-client, tabulate, sqlalchemy, slicer, scikit-learn, pyjwt, pillow, pandas, packaging, oauthlib, numba, Mako, kiwisolver, Jinja2, itsdangerous, importlib-metadata, gitdb, fonttools, cycler, contourpy, cloudpickle, click, botocore, sqlparse, shap, s3transfer, querystring-parser, pyyaml, pyarrow, protobuf, matplotlib, markdown, gunicorn, gitpython, Flask, entrypoints, docker, databricks-cli, alembic, pymysql, mlflow, boto3
Successfully installed Flask-2.2.2 Jinja2-3.1.2 Mako-1.2.4 MarkupSafe-2.1.1 Werkzeug-2.2.2 alembic-1.8.1 boto3-1.26.25 botocore-1.29.25 click-8.1.3 cloudpickle-2.2.0 contourpy-1.0.6 cycler-0.11.0 databricks-cli-0.17.4 docker-6.0.1 entrypoints-0.4 fonttools-4.38.0 gitdb-4.0.10 gitpython-3.1.29 greenlet-2.0.1 gunicorn-20.1.0 importlib-metadata-5.1.0 itsdangerous-2.1.2 jmespath-1.0.1 joblib-1.2.0 kiwisolver-1.4.4 llvmlite-0.39.1 markdown-3.4.1 matplotlib-3.6.2 mlflow-2.0.1 numba-0.56.4 numpy-1.23.5 oauthlib-3.2.2 packaging-21.3 pandas-1.5.2 pillow-9.3.0 protobuf-4.21.11 pyarrow-10.0.1 pyjwt-2.6.0 pymysql-1.0.2 pyparsing-3.0.9 python-dateutil-2.8.2 pytz-2022.6 pyyaml-6.0 querystring-parser-1.2.4 s3transfer-0.6.0 scikit-learn-1.1.3 scipy-1.9.3 shap-0.41.0 slicer-0.0.7 smmap-5.0.0 sqlalchemy-1.4.44 sqlparse-0.4.3 tabulate-0.9.0 threadpoolctl-3.1.0 websocket-client-1.4.2 zipp-3.11.0
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Removing intermediate container 4a9bde5fe31b
 ---> 8349057f83dc
Step 6/6 : RUN /app/1.sh
 ---> Running in 9bb6849aa06e
Hello Netology!
Removing intermediate container 9bb6849aa06e
 ---> 6992c704f094
Successfully built 6992c704f094
Successfully tagged netology-ml:netology-ml
```
