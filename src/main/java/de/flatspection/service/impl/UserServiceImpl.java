package de.flatspection.service.impl;

import javax.inject.Inject;

import de.flatspection.dao.UserDao;
import de.flatspection.domain.User;
import de.flatspection.dto.UserDTO;
import de.flatspection.exceptions.EmailExistsException;
import de.flatspection.exceptions.UsernameExistsException;
import de.flatspection.service.UserService;

public class UserServiceImpl implements UserService {

	@Inject
	private UserDao repository;
	
	
	
	@Override
	public User registerNewUserAccount(UserDTO user) {

		if (emailExists(user.getEmail())) {   
            throw new EmailExistsException("There is an account with that email address: "+ user.getEmail());
        }
		//////
		//no username existing any more
		//////
		/*
		if (emailExists(user.getEmail())) {   
            throw new UsernameExistsException("There is an account with that username address: "+ user.getEmail());
        }
		*/
		
        User newUser = new User();
        
        //////
        //test
        
        
        
        //test
        //////
        newUser.setFirstname(user.getFirstName());
        newUser.setLastname(user.getLastName());
        newUser.setPassword(user.getPassword());
        newUser.setEmail(user.getEmail());
        newUser.setBirthday(user.getBirthday());
        
        return repository.save(newUser); 
	}

	private boolean emailExists(String email) {
		User user = repository.findByEmail(email);
        if (user != null) {
            return true;
        }
        return false;
	}
	
	private boolean usernameExists(String username) {
		User user = repository.findByUsername(username);
        if (user != null) {
            return true;
        }
        return false;
	}

}
