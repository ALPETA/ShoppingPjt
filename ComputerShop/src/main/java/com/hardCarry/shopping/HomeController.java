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
	
	@RequestMapping("logcategory.do") 
	public String logcategory(Model model) {
		System.out.println("logcategory");
		return "logcategory";
	}
	
	@RequestMapping("index.do") // 메인
	public String index(Model model) {
		System.out.println("index");
		return "index";
	}
	
	@RequestMapping("addproduct.do") // 메인
	public String addproduct(Model model) {
		System.out.println("addproduct");
		return "addproduct";
	}
	
}
