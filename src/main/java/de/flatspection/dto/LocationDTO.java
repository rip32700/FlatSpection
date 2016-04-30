package de.flatspection.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class LocationDTO {

	@NotNull
	@NotEmpty
	private String location;
	
	public LocationDTO() {

	}
	
	public LocationDTO(String location) {
		super();
		this.location = location;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}
