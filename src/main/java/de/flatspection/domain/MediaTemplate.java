package de.flatspection.domain;

public class MediaTemplate {
	
	private String name;
	private String description;
	private Media media;
	//private ValueList valueList;
	public MediaTemplate(String name, String description, Media media) {
		super();
		this.name = name;
		this.description = description;
		this.media = media;
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
	public Media getMedia() {
		return media;
	}
	public void setMedia(Media media) {
		this.media = media;
	}
	
	

}
