package de.flatspection.service;

import org.springframework.stereotype.Service;

import de.flatspection.domain.User;
import de.flatspection.dto.UserDTO;

@Service
public interface UserService {

	User registerNewUserAccount(final UserDTO user);
	
}
