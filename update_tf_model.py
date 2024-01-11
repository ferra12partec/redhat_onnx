from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences
from keras import regularizers
from keras import layers
from keras.models import Sequential
import tensorflow as tf
import keras
import numpy as np
import pickle
import json

from data_prep import depure_data 

max_words = 100
max_len = 200

def create_model():
    with open('data//train_set.json', 'r') as file:
        data_dict = json.load(file)

    data = list(data_dict.keys())
    label = list(data_dict.values())

    data = [depure_data(d) for d in data]
    tokenizer = Tokenizer(num_words=max_words)
    tokenizer.fit_on_texts(data)
    sequences = tokenizer.texts_to_sequences(data)
    phrases = pad_sequences(sequences, maxlen=max_len)
    model1 = Sequential()
    model1.add(layers.Embedding(max_words, 20)) #The embedding layer
    model1.add(layers.LSTM(15)) #Our LSTM layer
    model1.add(layers.Dense(10,activation='relu'))
    model1.add(layers.Dense(1,activation='sigmoid'))

    optimizer = keras.optimizers.SGD(learning_rate=0.5)
    loss = keras.losses.BinaryCrossentropy()
    metrics = keras.metrics.BinaryAccuracy()
    model1.compile(optimizer=optimizer, loss=loss, metrics=metrics)

    history = model1.fit(phrases, np.array(label), epochs=50)

    return model1, tokenizer

# model1 = create_model()

# test = ['Il Sassuolo ha stipulato un accordo con Mapei per 50 mila euro', "Il Napoli ha perso l'ultima di campionato", 'Il Milan ha trovato l\'accordo con il nuovo giocatore']
# test = [depure_data(d) for d in test]
# test = tokenizer.texts_to_sequences(test)
# test = pad_sequences(test, maxlen=max_len)

# model1.predict(test)

# original_data = tokenizer.sequences_to_texts(sequences)

# with open('tokenizer.pickle', 'wb') as handle:
#     pickle.dump(model1[1], handle, protocol=pickle.HIGHEST_PROTOCOL)

# model1[0].save('my_model.keras')

# tf.saved_model.save(model1[0], 'model//my_model')
