package de.flatspection.domain;

import java.util.Locale;

public class Address {
	
	private String street;
	private String number;
	private String zip;
	private String city;
	private Locale country;
	private double longitude;
	private double latitude;
	
	public Address(String street, String number, String zip, String city, Locale country, double longitude,
			double latitude) {
		super();
		this.street = street;
		this.number = number;
		this.zip = zip;
		this.city = city;
		this.country = country;
		this.longitude = longitude;
		this.latitude = latitude;
	}
	
	public Address(){
		
	}
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Locale getCountry() {
		return country;
	}
	public void setCountry(Locale country) {
		this.country = country;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

}
