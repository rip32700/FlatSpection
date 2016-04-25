package de.flatspection.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import de.flatspection.dao.UserDao;
import de.flatspection.dao.impl.UserDaoImpl;
import de.flatspection.service.UserService;
import de.flatspection.service.impl.UserServiceImpl;

@Configuration
@ComponentScan( {"de.flatspection.service" })
public class RootConfig {

	
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/KaDoRi?user=root&password=password");
		return ds;
	}
	
	
	@Bean
	public JdbcTemplate jdbcTemplate(DataSource dataSource) {
		return new JdbcTemplate(dataSource);
	}
	
	
	@Bean
	public UserDao userDao() {
		return new UserDaoImpl();
	}
	
	@Bean
	public UserService userService() {
		return new UserServiceImpl();
	}
	
}
