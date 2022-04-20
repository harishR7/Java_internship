package com.training;

public class Permutation {
	
	public  void permutationCalucation(String emptyString,String string) {
		

		    int n = string.length();
		    if (n == 0) System.out.println(emptyString);
		    else {
		        for (int i = 0; i < n; i++)
		        	
		        	permutationCalucation( (emptyString + string.charAt(i)), string.substring(0, i) + string.substring(i+1, n));
		    
		}
		
			
		}
	}

