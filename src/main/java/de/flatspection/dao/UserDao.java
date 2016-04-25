package de.flatspection.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import de.flatspection.domain.User;

@Repository
public interface UserDao {

	User findUserById(final Long userId);
	List<User> findAllUsers();
	User save(User user);
	User findByEmail(String email);
	
}
