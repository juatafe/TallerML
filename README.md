# 🌸 Classificador de les flors d'Iris amb Weka

Este projecte mostra com utilitzar **Weka** per a entrenar i provar un model de classificació de les famoses flors d’**Iris**, tant amb **Java** com amb **Python**.

---

## 📁 Contingut del projecte

- `irisTest.arff` → Dades d’Iris en format ARFF.
- `irisCorrecte.model` → Model entrenat i serialitzat amb Weka.
- `IrisClassifierTest.java` → Programa en Java per a carregar i usar el model.
- `prova_model.py` → Equivalent en Python (amb python-weka-wrapper3).
- `weka.jar` → Llibreria de Weka (necessària per a Java).
- `requirements.txt` → Llibreries necessàries per a executar el script Python.
- `wekajava.sh` → Script per a compilar i executar el programa Java.

---

## 🛠️ Requisits

### Java
- `openjdk-11` o superior
- `weka.jar` (inclòs al repo)

### Python (opcional)
- `python3.8`
- `virtualenv` recomanat

---

## 🚀 Executar el classificador

### En Java

```bash
bash wejajava.sh
```

Aquest script compila `IrisClassifierTest.java` i després l'executa amb `weka.jar` al classpath. Output esperat:

```
Instància 1: classe predita = Iris-setosa
Instància 2: classe predita = Iris-setosa
...
```

---

### En Python

```bash
python3 -m venv weka38-env
source weka38-env/bin/activate
pip install -r requirements.txt
python prova_model.py
```

---

## 🧠 Com s’ha creat el model `irisCorrecte.model`?

1. S’ha obert Weka amb `java -jar weka.jar`.
2. A `Explorer`, s’han carregat les dades `irisTest.arff`.
3. S’ha seleccionat un classificador (ex: Naive Bayes o Bayes Net).
4. S’ha fet clic en **Start** i després en **Save model**.
5. S’ha guardat com `irisCorrecte.model`.

---

## 📝 Notes addicionals

- VS Code pot donar errors als imports si no detecta el `.jar`. Solució: afegir `weka.jar` a `.vscode/settings.json`.
- El model `irisTest.model` **no funcionava en Python** perquè guardava també les instàncies. En canvi, `irisCorrecte.model` **només guarda el classificador**.

---

## 🙌 Crèdits

Projecte creat per [@juatafe](https://github.com/juatafe) amb ChatGPT, codi i una mica de cafeïna ☕.
