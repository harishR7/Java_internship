package com.training;

import java.util.ArrayList;

public class Calculation {
	
	ArrayList<Integer> number =new ArrayList<>();
	ArrayList<Integer> pos=new ArrayList<Integer>();
	ArrayList<Integer> flag=new ArrayList<>() ;
	
	
	
	
	public boolean add(int a) {
		
		return number.add(a);
	}
	
	public void FindPosAndOccurence() {
		
		int count=0;
		
		for(int i=0;i<number.size();i++) {
			
			for(int j=i;j<number.size();j++) {
				
				if(number.get(i)==number.get(j)) {
					
					count=count+1;
					
					pos.add(j);
					
					
					
				}
				
				
			}
		
			
			System.out.println(number.get(i)+"="+count);
			System.out.println("Position="+pos);
			count=0;
			pos.removeAll(pos);
		}
	}
	
	
	
	@Override
	public String toString() {
		return "["  +pos + "]";
	}
	
}
