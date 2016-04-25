package de.flatspection.web;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import de.flatspection.domain.User;
import de.flatspection.dto.UserDTO;
import de.flatspection.exceptions.EmailExistsException;
import de.flatspection.service.UserService;

@Controller
public class RegistrationController {

	
	@Inject 
	private UserService service;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String showRegistrationForm(final Model model) {
		model.addAttribute("userDTO", new UserDTO());
		return "registration";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userDTO") @Valid final UserDTO user, final BindingResult result, final Errors errors) {
		
		User registered = new User();
		
		if (!result.hasErrors()) {
	        registered = createUserAccount(user, result);
	    }
		if (registered == null) {
	       // result.rejectValue("email", "message.regError");
	    }
	    if (result.hasErrors()) {
	        return new ModelAndView("registration", "userDTO", user);
	    } 
	    else {
	        return new ModelAndView("successRegister", "userDTO", user);
	    }
	}

	private User createUserAccount(UserDTO user, BindingResult result) {
		User registered = null;
	    try {
	        registered = service.registerNewUserAccount(user);
	    } catch (EmailExistsException e) {
	        return null;
	    }
	    return registered;
	}
	
}
