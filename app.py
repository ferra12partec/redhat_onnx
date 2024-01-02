import json
from flask import Flask, jsonify, request

from prediction import predict

application = Flask(__name__)


# @application.route('/')
@application.route('/status')
def status():
    return jsonify({'status': 'ok'})

@application.route('/predictions', methods=['GET','POST'])
def create_prediction():
    try:
        data = request.get_data(as_text=True)  # Legge i dati come testo direttamente
        data = list(json.loads(data).values())
        data = [str(round(p[0],2)) for p in predict(data)]
        return jsonify({'prediction':data})
    except Exception as e:
        return jsonify({'error': str(e)})
    
if __name__ == "__main__":
    application.run(debug=True, host='0.0.0.0', port=8080) # Launch built-in we server and run this Flask webapp