@echo off
set MAIN_CLASS=IrisClassifierTest
set WEKA_JAR=weka.jar

echo 🛠️ Compilant %MAIN_CLASS%.java...
javac -cp "%WEKA_JAR%;." %MAIN_CLASS%.java
if errorlevel 1 (
    echo ❌ Error de compilació
    exit /b 1
)

echo 🚀 Executant %MAIN_CLASS%...
java -cp "%WEKA_JAR%;." %MAIN_CLASS%
