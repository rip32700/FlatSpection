package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.flatspection.dto.LocationDTO;

@Controller
public class HomeController {

	@RequestMapping(value={"/", "/home"}, method=RequestMethod.GET)
	public String home(final Model model) {
		model.addAttribute("locationDTO", new LocationDTO());
		return "home";
	}
	
	@RequestMapping(value={"/search"}, method=RequestMethod.GET)
	public String search(final LocationDTO locationDTO, final Model model) {
		model.addAttribute("locationDTO", locationDTO.getLocation());
		return "search";
	}
	
}
