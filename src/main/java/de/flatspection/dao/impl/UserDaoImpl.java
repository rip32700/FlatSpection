package de.flatspection.dao.impl;

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

}
