package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value={"/", "/home"})
	public String home(final Model model) {
		return "home";
	}
	
	@RequestMapping(value={"/search"})
	public String search(final Model model) {
		return "search";
	}
	
}
