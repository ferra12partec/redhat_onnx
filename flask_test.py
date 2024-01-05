import requests
import tensorflow as tf
from keras.preprocessing.sequence import pad_sequences
from keras.models import Sequential, model_from_json
from data_prep import depure_data
import json
import pickle
from configparser import ConfigParser
import numpy as np
# from prediction import predict
from prediction import predict

headers = {
    # Already added when you pass json=
    # 'Content-Type': 'application/json',
}

json_data = {"string":"Il Milan ha un contratto da 20 milioni con Adidas per lo sponsor maglia.",
             "string1": "La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico.",
             "string2": "La Juventus ha vinto l'ultima partita di campionato"}
response = requests.get('https://redhat-onnx-git-edoardo-ferrazzo-dev.apps.sandbox-m4.g2pi.p1.openshiftapps.com/predictions', headers=headers, json=json_data)
# response = requests.post('http://127.0.0.1:5000/predictions', headers=headers, json=json_data)

response.json()


print(response.text)

# print(predict(list(json_data.values()))['prediction'][0][0]) 
config = ConfigParser()
config.read('config.ini')
data = ['Il Milan ha un contratto da 20 milioni con Adidas per lo sponsor maglia.', 
        'La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico.', 
        "La Juventus ha vinto l'ultima partita di campionato"]
predict(data)

with open('model//tokenizer.pickle', 'rb') as handle:
    tokenizer = pickle.load(handle)
model = tf.keras.models.load_model('model//my_model.keras')
input = [depure_data(d) for d in data]
print(input)
input = tokenizer.texts_to_sequences(input)
input = pad_sequences(input, maxlen=int(config['MODEL_PARAMS']['max_len']))
model.predict(input)


predict(data)


# serialize model to JSON
model_json = model.to_json()
with open("model//model.json", "w") as json_file:
    json_file.write(model_json)
# serialize weights to HDF5
model.save_weights("model//model.h5")
print("Saved model to disk")
 
# later...
 
# load json and create model
json_file = open('model//model.json', 'r')
loaded_model_json = json_file.read()
json_file.close()
loaded_model = model_from_json(loaded_model_json)
# load weights into new model
loaded_model.load_weights("model.h5")
print("Loaded model from disk")
 
loaded_model.predict(input)
