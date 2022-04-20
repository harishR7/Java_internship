package com.training;
import java.util.*;

public class RemoveDuplication {
	
	
	Set<String> list= new TreeSet<>();
	
	public boolean add(String value) {
		return list.add(value);
	}

//	@Override
//	public int hashCode() {
//		final int prime = 31;
//		int result = 1;
//		result = prime * result + ((list == null) ? 0 : list.hashCode());
//		return result;
//	}
//
//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (getClass() != obj.getClass())
//			return false;
//		RemoveDuplication other = (RemoveDuplication) obj;
//		if (list == null) {
//			if (other.list != null)
//				return false;
//		} else if (!list.equals(other.list))
//			return false;
//		return true;
//	}
//	
	
	

	@Override
	public String toString() {
		return "RemoveDuplication [list=" + list + "]";
	}
	
}
