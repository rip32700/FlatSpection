package de.flatspection.dao.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.jdbc.core.JdbcOperations;

import de.flatspection.dao.UserDao;
import de.flatspection.domain.User;

public class UserDaoImpl implements UserDao {

	@Inject
	JdbcOperations jdbcOperations;
	
	@Override
	public User findUserById(Long userId) {
		return null; //jdbcOperations.query(null, null, null);
	}

	@Override
	public List<User> findAllUsers() {
		return null;
	}

	@Override
	public User save(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
