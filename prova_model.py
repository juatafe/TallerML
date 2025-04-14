import weka.core.jvm as jvm
from weka.core.converters import Loader
from weka.classifiers import Classifier

# Iniciem la JVM
jvm.start(packages=True)

try:
    # Carreguem el fitxer ARFF per fer prediccions
    loader = Loader(classname="weka.core.converters.ArffLoader")
    data = loader.load_file("irisTest.arff")
    data.class_is_last()

    # Carreguem el model correctament serialitzat
    cls = Classifier(jobject=Classifier.deserialize("irisTest.model")[1])

    # Prediccions
    for index, inst in enumerate(data):
        pred = cls.classify_instance(inst)
        pred_label = data.class_attribute.value(int(pred))
        print(f"Instància {index + 1}: classe predita = {pred_label}")

finally:
    jvm.stop()
