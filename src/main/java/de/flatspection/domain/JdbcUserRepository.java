package de.flatspection.domain;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.crypto.password.PasswordEncoder;

public class JdbcUserRepository implements UserRepository{
	
	private final JdbcTemplate jdbcTemplate;

	private final PasswordEncoder passwordEncoder;
	
	@Inject
	public JdbcUserRepository(JdbcTemplate jdbcTemplate, PasswordEncoder passwordEncoder) {
		this.jdbcTemplate = jdbcTemplate;
		this.passwordEncoder = passwordEncoder;
	}
		

	@Override
	public void createUser(User user) throws EmailAlreadyInUseException {
		
		try {
			jdbcTemplate.update(
					"insert into Account (firstName, lastName, email, password) values (?, ?, ?, ?)",
					user.getFirstname(), user.getLastname(), user.getEmail(),
					passwordEncoder.encode(user.getPassword()));
		} catch (DuplicateKeyException e) {
			throw new EmailAlreadyInUseException(user.getEmail());
		}
		
	}

	@Override
	public User findAccountByEmail(String email) {
		return jdbcTemplate.queryForObject("select email, firstName, lastName from Account where email = ?",
				new RowMapper<User>() {
					public User mapRow(ResultSet rs, int rowNum) throws SQLException {
						return new User(rs.getString("email"), null, rs.getString("firstName"), rs
								.getString("lastName"));
					}
				}, email);
	}
	
		
	

}
