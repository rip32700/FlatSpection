package de.flatspection.domain;

import java.time.LocalDate;

public class Media {
	
	private String name;
	private String description;
	private LocalDate creationDate;
	public Media(String name, String description, LocalDate creationDate) {
		super();
		this.name = name;
		this.description = description;
		this.creationDate = creationDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(LocalDate creationDate) {
		this.creationDate = creationDate;
	}
	
	

}
