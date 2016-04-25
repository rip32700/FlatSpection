package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfileController {

	@RequestMapping(value="/profile")
	public String profile() {
		return "profile";
	}
}
