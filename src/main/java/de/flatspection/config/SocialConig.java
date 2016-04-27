package de.flatspection.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.social.UserIdSource;
import org.springframework.social.config.annotation.ConnectionFactoryConfigurer;
import org.springframework.social.config.annotation.EnableSocial;
import org.springframework.social.config.annotation.SocialConfigurer;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.UsersConnectionRepository;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;

//@Configuration
//@EnableSocial
public class SocialConig { /* implements SocialConfigurer {

	@Override
	public void addConnectionFactories(ConnectionFactoryConfigurer configurer, Environment env) {
		configurer.addConnectionFactory(new FacebookConnectionFactory(
	            env.getProperty("spring.social.facebook.appId"),
	            env.getProperty("spring.social.facebook.appSecret")));
		
	}

	@Override
	public UserIdSource getUserIdSource() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UsersConnectionRepository getUsersConnectionRepository(ConnectionFactoryLocator arg0) {
		// TODO Auto-generated method stub
		return null;
	}*/

}
