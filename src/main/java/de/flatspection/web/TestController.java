package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping(value="/test")
	public String test(final Model model) {
		model.addAttribute("msg", "Hello Test!");
		return "test";
	}
	
	@RequestMapping(value="/test2")
	public String test2(final Model model) {
		model.addAttribute("msg", "Hello Test!");
		return "test2";
	}
}
