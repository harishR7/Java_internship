package com.training;

public class Application {

	public static void main(String[] args) {
		
		// we are using ArrayList as we dont no the exactSize so we can 
		// add the number using add method in collections
		
		Calculation calculation=new Calculation();
		
		
		calculation.add(1);
		calculation.add(5);
		calculation.add(2);
		calculation.add(1);
		calculation.add(2);
		calculation.add(6);
		calculation.add(7);
		calculation.add(1);
		
		calculation.FindPosAndOccurence();
		

	}

}
