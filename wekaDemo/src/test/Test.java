package test;

import weka.CarTypePredection;

public class Test {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		CarTypePredection test = new CarTypePredection();
		String result = test.wekaPredictValue(3.4, 4, 6, 5);
		System.out.println(result);
	}
	
	public String returnResult() throws Exception{
		CarTypePredection test = new CarTypePredection();
		String result = test.wekaPredictValue(3.4, 4, 6, 5);
		return result;
	}

}
