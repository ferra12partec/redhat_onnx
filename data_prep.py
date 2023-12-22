import re
from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences

def depure_data(data): 
    #Removing URLs with a regular expression
    url_pattern = re.compile(r'https?://\S+|www\.\S+')
    data = url_pattern.sub(r'', data)
    # Remove Emails
    data = re.sub('\S*@\S*\s?', '', data)
    # Remove new line characters
    data = re.sub('\s+', ' ', data)
    # Remove distracting single quotes
    data = re.sub("\'", "", data)
    data = data.lower()
    return data

def tokenize_data(data, max_len, max_words):
    data = [depure_data(d) for d in data]
    tokenizer = Tokenizer(num_words=max_words)
    tokenizer.fit_on_texts(data)
    sequences = tokenizer.texts_to_sequences(data)
    phrases = pad_sequences(sequences, maxlen=max_len)
    return {
        'data': phrases,
        'tokenizer': tokenizer
    }
