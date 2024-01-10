import onnx
from skl2onnx import convert_sklearn
from skl2onnx.common.data_types import FloatTensorType
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

# Carica il dataset Iris
iris = load_iris()
X_train, X_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.2, random_state=42)

# Crea e allena un modello di classificazione RandomForest
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Definisci il tipo di input
initial_type = [('float_input', FloatTensorType([None, 4]))]

# Converti il modello in formato ONNX
onnx_model = convert_sklearn(model, initial_types=initial_type)

# Salva il modello ONNX su disco
onnx.save_model(onnx_model, 'model.onnx')
