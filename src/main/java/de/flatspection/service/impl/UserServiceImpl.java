package de.flatspection.service.impl;

import javax.inject.Inject;

import de.flatspection.dao.UserDao;
import de.flatspection.domain.User;
import de.flatspection.dto.UserDTO;
import de.flatspection.exceptions.EmailExistsException;
import de.flatspection.service.UserService;

public class UserServiceImpl implements UserService {

	@Inject
	private UserDao repository;
	
	@Override
	public User registerNewUserAccount(UserDTO user) {

		if (emailExist(user.getEmail())) {   
            throw new EmailExistsException("There is an account with that email address: "+ user.getEmail());
        }
		
        User newUser = new User();    
        newUser.setFirstName(user.getFirstName());
        newUser.setLastName(user.getLastName());
        newUser.setPassword(user.getPassword());
        newUser.setEmail(user.getEmail());
        newUser.setType(user.getType());
        //newUser.setBirthday(user.getBirthday());
        
        return repository.save(newUser); 
	}

	private boolean emailExist(String email) {
		User user = repository.findByEmail(email);
        if (user != null) {
            return true;
        }
        return false;
	}

}
