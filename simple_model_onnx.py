# Installa le librerie necessarie se non le hai già
# pip install scikit-learn onnx onnxmltools

# Importa le librerie
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.datasets import load_iris
from sklearn.metrics import accuracy_score
from skl2onnx import convert_sklearn
from skl2onnx.common.data_types import FloatTensorType

# Carica il dataset Iris
iris = load_iris()
X, y = iris.data, iris.target

# Suddividi il dataset in set di addestramento e test
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Crea un modello di classificazione semplice (Random Forest)
model = RandomForestClassifier(n_estimators=10, random_state=42)
model.fit(X_train, y_train)

# Valuta l'accuratezza del modello
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')

# Converti il modello in formato ONNX
initial_type = [('float_input', FloatTensorType([None, 4]))]  # 4 features nel dataset Iris
onnx_model = convert_sklearn(model, initial_types=initial_type)

# Salva il modello in formato ONNX
onnx_filename = "simple_classifier.onnx"
with open(onnx_filename, "wb") as f:
    f.write(onnx_model.SerializeToString())

print(f'Modello salvato in formato ONNX: {onnx_filename}')