import requests
import json
# from prediction import predict

headers = {
    # Already added when you pass json=
    # 'Content-Type': 'application/json',
}

json_data = {"string":"Il Milan ha un contratto da 20 milioni con Adidas per lo sponsor maglia.",
             "string1": "La Juventus invece ha firmato con Puma un contratto da 15 milioni di euro per lo sponsor tecnico.",
             "string2": "La Juventus ha vinto l'ultima partita di campionato"}
response = requests.get('https://redhat-onnx-edoardo-ferrazzo-dev.apps.sandbox-m4.g2pi.p1.openshiftapps.com/predictions', headers=headers, json=json_data)


print(response.text)

# print(predict(list(json_data.values()))['prediction'][0][0]) 