import requests

headers = {
    # Already added when you pass json=
    # 'Content-Type': 'application/json',
}

json_data = {"string":"Il Milan ha un contratto da 20 milioni con Adidas per lo sponsor maglia.",
             "string1": "La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico.",
             "string2": "La Juventus ha vinto l'ultima partita di campionato"}
# response = requests.get('https://redhat-onnx-git-edoardo-ferrazzo-dev.apps.sandbox-m4.g2pi.p1.openshiftapps.com/status', headers=headers, json=json_data)
# response = requests.post('http://127.0.0.1:5000/predictions', headers=headers, json=json_data)
response = requests.post('http://127.0.0.1:5000/predict', headers=headers, json={'data': [5.1, 3.5, 1.4, 0.2]})


print(response.json())