package de.flatspection.domain;

public class EmailAlreadyInUseException extends Exception {
	
	private static final long serialVersionUID = 1L;

	public EmailAlreadyInUseException(String email) {
		super("The email '" + email + "' is already in use.");
	}

}
