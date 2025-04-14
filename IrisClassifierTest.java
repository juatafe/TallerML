import weka.classifiers.Classifier;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;
import weka.core.SerializationHelper;

public class IrisClassifierTest {
    public static void main(String[] args) throws Exception {

        // Carrega el fitxer ARFF
        DataSource source = new DataSource("irisTest.arff");
        Instances data = source.getDataSet();

        // Assigna l'atribut classe (l'últim)
        if (data.classIndex() == -1)
            data.setClassIndex(data.numAttributes() - 1);

        // Carrega el model
        Classifier cls = (Classifier) SerializationHelper.read("irisCorrecte.model");

        // Classifica les instàncies
        for (int i = 0; i < data.numInstances(); i++) {
            double pred = cls.classifyInstance(data.instance(i));
            String prediccio = data.classAttribute().value((int) pred);
            System.out.println("Instància " + (i + 1) + ": classe predita = " + prediccio);
        }
    }
}
