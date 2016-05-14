package de.flatspection.domain;

public interface UserRepository {
	
	void createUser(User user) throws EmailAlreadyInUseException;

	User findAccountByEmail(String email);

}
