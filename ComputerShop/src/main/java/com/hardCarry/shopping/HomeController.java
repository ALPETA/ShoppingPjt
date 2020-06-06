package com.hardCarry.shopping;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("index");
		return "index";
	}
	@RequestMapping(value = "signUp.do", method = RequestMethod.GET)
	public String signUp(Model model) {
		logger.info("signUp");
		return "signUp";
	}
}
