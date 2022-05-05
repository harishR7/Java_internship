package com.training.country;

public class Country {
	
	private String countryName;
	private String place;
	private long population;
	
	
	public Country() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Country(String countryName, String place, long population) {
		super();
		this.countryName = countryName;
		this.place = place;
		this.population = population;
	}


	public String getCountryName() {
		return countryName;
	}


	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public long getPopulation() {
		return population;
	}


	public void setPopulation(long population) {
		this.population = population;
	}


	@Override
	public String toString() {
		return "Country [countryName=" + countryName + ", place=" + place + ", population=" + population + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((countryName == null) ? 0 : countryName.hashCode());
		result = prime * result + ((place == null) ? 0 : place.hashCode());
		result = prime * result + (int) (population ^ (population >>> 32));
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Country other = (Country) obj;
		if (countryName == null) {
			if (other.countryName != null)
				return false;
		} else if (!countryName.equals(other.countryName))
			return false;
		if (place == null) {
			if (other.place != null)
				return false;
		} else if (!place.equals(other.place))
			return false;
		if (population != other.population)
			return false;
		return true;
	}
	
	
	
	
	
}
