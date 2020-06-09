package com.hardCarry.shopping;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "index", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String home(@RequestBody String id) {
		return id;
	}

	@RequestMapping("about.do")
	public String about(Model model) {
		return "about";
	}

	@RequestMapping("computer.do")
	public String computer(Model model) {
		return "computer";
	}

	@RequestMapping("contact.do")
	public String contact(Model model) {
		return "contact";
	}

	@RequestMapping("index.do")
	public String index(Model model) {
		return "index";
	}

	@RequestMapping("laptop.do")
	public String laptop(Model model) {
		return "laptop";
	}
}
