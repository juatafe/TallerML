#!/bin/bash

# Fitxer Java principal (sense extensió)
MAIN_CLASS=IrisClassifierTest

# Ruta a weka.jar
WEKA_JAR=weka.jar

echo "🛠️ Compilant $MAIN_CLASS.java..."
javac -cp "$WEKA_JAR:." "$MAIN_CLASS.java"
if [ $? -ne 0 ]; then
    echo "❌ Error de compilació"
    exit 1
fi

echo "🚀 Executant $MAIN_CLASS..."
java -cp "$WEKA_JAR:." "$MAIN_CLASS"
