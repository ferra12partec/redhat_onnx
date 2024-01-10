# File: flask_app.py

from flask import Flask, request, jsonify
import onnxruntime
import numpy as np

app = Flask(__name__)

# Carica il modello ONNX
onnx_session = onnxruntime.InferenceSession('model.onnx')

@app.route('/predict', methods=['POST'])
def predict():
    # Ottieni i dati dal corpo della richiesta
    data = request.get_json(force=True)
    
    # Effettua la previsione utilizzando il modello ONNX
    input_data = np.array(data['data']).reshape(1, -1).astype(np.float32)
    output = onnx_session.run(None, {'float_input': input_data})

    # Ritorna il risultato in formato JSON
    return jsonify(output[0].tolist())

if __name__ == '__main__':
    app.run(port=5000)
