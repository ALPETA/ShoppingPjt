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

	@RequestMapping(value = "laptop.do", method = RequestMethod.GET)
	public String laptop(Model model) {
		logger.info("laptop");
		return "laptop";
	}

	@RequestMapping(value = "contact.do", method = RequestMethod.GET)
	public String contact(Model model) {
		logger.info("contact");
		return "contact";
	}

	@RequestMapping(value = "product.do", method = RequestMethod.GET)
	public String product(Model model) {
		logger.info("product");
		return "product";
	}

	@RequestMapping(value = "computer.do", method = RequestMethod.GET)
	public String computer(Model model) {
		logger.info("computer");
		return "computer";
	}

	@RequestMapping(value = "about.do", method = RequestMethod.GET)
	public String about(Model model) {
		logger.info("about");
		return "about";
	}

	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String mypage(Model model) {
		logger.info("mypage");
		return "mypage";
	}

	@RequestMapping(value = "shoppingCart.do", method = RequestMethod.GET)
	public String shoppingCart(Model model) {
		logger.info("shoppingCart");
		return "shoppingCart";
	}
}
