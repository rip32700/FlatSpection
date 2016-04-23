package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
	@RequestMapping(value="/")
	public String home(final Model model) {
		model.addAttribute("msg", "Hello World!");
		return "home";
	}
	
}
