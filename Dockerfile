# FROM registry.access.redhat.com/ubi8/python-39:latest
FROM python:3.9-slim

COPY requirements.txt ./requirements.txt
COPY data data/
COPY model model/
COPY config.ini ./config.ini
COPY data_prep.py ./data_prep.py

RUN pip install -r requirements.txt

COPY app.py ./app.py
COPY prediction.py ./prediction.py
COPY update_tf_model.py ./update_tf_model.py

USER 1001
EXPOSE 8080

CMD ["python3", "app.py", "8080"]