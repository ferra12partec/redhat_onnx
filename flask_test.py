import requests
import json
from prediction import predict

headers = {
    # Already added when you pass json=
    # 'Content-Type': 'application/json',
}

json_data = {"string":"Il Milan ha un contratto da 20 milioni con Adidas per lo sponsor maglia.",
             "string1": "La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico."}
response = requests.post('http://127.0.0.1:5000/predictions', headers=headers, json=json_data)
print(response.text)

list(predict(list(json_data.values()))['prediction'])