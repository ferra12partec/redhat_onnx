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
FROM python:3.8-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file necessari nella directory di lavoro
COPY train_model.py .
COPY flask_app.py .
COPY model.onnx .

# Installa le dipendenze
RUN pip install Flask onnxruntime skl2onnx scikit-learn

# Esponi la porta 5000
EXPOSE 5000

# Comando di avvio dell'applicazione
CMD ["python", "flask_app.py"]
