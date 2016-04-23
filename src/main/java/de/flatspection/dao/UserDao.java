package de.flatspection.dao;

import org.springframework.stereotype.Repository;

import de.flatspection.domain.User;

@Repository
public interface UserDao {

	User findUserById(final Long userId);
}
