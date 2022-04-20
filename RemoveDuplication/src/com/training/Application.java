package com.training;

import java.util.*;

public class Application {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		RemoveDuplication elements=new RemoveDuplication();
		elements.add("apple");
		elements.add("orange");
		elements.add("banana");
		elements.add("apple");
		elements.add("pineapple");
		elements.add("orange");
		elements.add("banana");
		
		
			System.out.print(elements.list);
			
			//for finding Indexs
			
			ArrayList<String> list1=new ArrayList<String> ();
			
			Iterator<String>itr= elements.list.iterator();
			while(itr.hasNext()) {
				list1.add(itr.next());
			}
			
			
			
			
		
	}
	
	
}
