# FROM registry.access.redhat.com/ubi8/python-39:latest
# FROM python:3.10-slim

# COPY requirements.txt ./requirements.txt
# COPY data data/
# COPY model model/
# COPY config.ini ./config.ini
# COPY data_prep.py ./data_prep.py

# RUN pip install -r requirements.txt

# COPY app.py ./app.py
# COPY prediction.py ./prediction.py
# COPY update_tf_model.py ./update_tf_model.py

# USER 1001
# EXPOSE 8080

# CMD ["python3", "app.py", "8080"]

# File: Dockerfile

# Usa un'immagine di Python
FROM --platform=linux/x86_64 python:3.9
RUN python -m pip install --upgrade pip
RUN pip install Flask scikit-learn tensorflow==2.15.0


# Imposta la directory di lavoro
WORKDIR /app

COPY data data/
COPY my_model.keras ./my_model.keras
COPY tokenizer.pickle ./tokenizer.pickle
COPY config.ini ./config.ini
COPY data_prep.py ./data_prep.py
COPY app.py ./app.py
COPY prediction.py ./prediction.py
COPY update_tf_model.py ./update_tf_model.py

# USER 1001
# EXPOSE 8080

# Comando di avvio dell'applicazione
CMD ["python3", "app.py", "8080"]
