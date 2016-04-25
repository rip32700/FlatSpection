package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import de.flatspection.domain.User2;

@Controller
public class HomeController {

	private static final String USER_URI_V1 = "http://localhost:8080/user/";
    private RestTemplate restTemplate = new RestTemplate();
	
	@RequestMapping(value={"/", "/home"})
	public String home(final Model model) {
		model.addAttribute("msg", "Hello World!");
		
		User2 testUser = readUser(1L);
		System.out.println(testUser);
		
		return "home";
	}
	
	private User2 readUser(final Long userId) {
		return restTemplate.getForObject(USER_URI_V1 + "/{userId}", User2.class, userId);
	}
	
}
