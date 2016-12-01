package weka;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.classifiers.trees.J48;
import weka.core.Instance;
import weka.core.Instances;

public class CarTypePredection {

//	public static void main(String[] args) throws Exception {
//		// TODO Auto-generated method stub
//		Instances data = new Instances(new BufferedReader(new FileReader(
//				"/Users/wingrove/Desktop/data.arff")));
//		data.setClassIndex(data.numAttributes() - 1);
//		Classifier classifier = new J48();
//		Evaluation eval = new Evaluation(data);
//		
//		classifier.buildClassifier(data);
//
//		eval.evaluateModel(classifier, data);
//
//		for(int i=0;i<data.numInstances();i++){
//			double value=classifier.classifyInstance(data.instance(i));
//			System.out.println(data.instance(i));
//			if(i>data.numInstances()-3){
//				Instance ins = data.instance(i);
//				System.out.println(ins.classIndex());
//			}
//			
//			String prediction=data.classAttribute().value((int)value); 
//			
//			//System.out.println("num "+i+" "+prediction);
//		}
////		double value=classifier.classifyInstance(data.instance(0));
////		String prediction=data.classAttribute().value((int)value); 
////		System.out.println(prediction);
//		// Instances test = new Instances(new BufferedReader(new
//		// FileReader("/Users/wingrove/Desktop/test.arff")));
//
//	}
	
	public String wekaPredictValue(double epa,double acceleration,double hp,double speed) throws Exception{
		String result="";
		Instances data = new Instances(new BufferedReader(new FileReader(
				"/Users/wingrove/Desktop/data.arff")));
		Instance testInstance = new Instance(5); 
		testInstance.setDataset(data);
		testInstance.setValue(0, epa);
		testInstance.setValue(1, acceleration);
		testInstance.setValue(2, hp);
		testInstance.setValue(3, speed);
		testInstance.setMissing(4);
		//testInstance.setMissing(5);
		
		data.setClassIndex(data.numAttributes() - 1);
		Classifier classifier = new J48();
		
		classifier.buildClassifier(data);
		double value=classifier.classifyInstance(testInstance);
		
		result=data.classAttribute().value((int)value);
		
		return result;
	}

}
