import tensorflow as tf
from keras.preprocessing.sequence import pad_sequences
from data_prep import depure_data
# import json
import pickle
from configparser import ConfigParser
# import numpy as np
from update_tf_model import create_model

config = ConfigParser()
config.read('config.ini')

def predict(data):
    # model, tokenizer = create_model()
    with open('tokenizer.pickle', 'rb') as handle:
        tokenizer = pickle.load(handle)
    with open('model.json', 'r') as file:
        model = tf.keras.models.model_from_json(file.read())
    model.load_weights('weights.h5')
    input = [depure_data(d) for d in data]
    input = tokenizer.texts_to_sequences(input)
    input = pad_sequences(input, maxlen=int(config['MODEL_PARAMS']['max_len']))
    return model.predict(input)

# data = {'string': 'Il Milan ha un contratto da 10 milioni con Adidas per lo sponsor maglia. La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico.'}
# body = list(data.values())

# predict(body)