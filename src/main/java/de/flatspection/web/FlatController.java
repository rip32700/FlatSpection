package de.flatspection.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FlatController {

	@RequestMapping(value="/flat/redirect/{flatId}")
	public @ResponseBody String flatInfo(@PathVariable("flatId") String flatId, final Model model) {
		System.out.println("flat/" + flatId);
		return "flat/" + flatId;
	}
	
	@RequestMapping(value="/flat/{flatId}")
	public String flats(final Model model) {
		return "flat";
	}
	
}
