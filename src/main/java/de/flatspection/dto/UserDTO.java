package de.flatspection.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import de.flatspection.web.validation.PasswordMatches;

@PasswordMatches
public class UserDTO {

	@NotNull
	@NotEmpty
	private String firstName;
	
	@NotNull
	@NotEmpty
	private String lastName;
	
	@NotNull
	@NotEmpty
	private String username;
	
	@NotNull
	@NotEmpty
	private String email;
	
	@NotNull
	@NotEmpty
	private String password;
	
	@NotNull
	@NotEmpty
	private String matchingPassword;
	
	@NotNull
	@NotEmpty
	private String type;
	
	//@DateTimeFormat(pattern = "dd.MM.yyyy HH:mm:ss.SSSZ")
	@NotNull
	@NotEmpty
	private String birthday;
	
	public UserDTO() {
		
	}
	
	public UserDTO(String firstName, String lastName, String username, String email, String password, String matchingPassword, String type, String birthday) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.password = password;
		this.matchingPassword = matchingPassword;
		this.type = type;
		this.birthday = birthday;
	}
	
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMatchingPassword() {
		return matchingPassword;
	}
	public void setMatchingPassword(String matchingPassword) {
		this.matchingPassword = matchingPassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "UserDTO [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", password="
				+ password + ", matchingPassword=" + matchingPassword + ", type=" + type + "]";
	}
	
	
	
}
