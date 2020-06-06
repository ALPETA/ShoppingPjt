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
	
	@RequestMapping("logcategory.do") //관리자창 메인
	public String logcategory(Model model) {
		System.out.println("logcategory");
		return "logcategory";
	}
	
	@RequestMapping("index.do") // 메인
	public String index(Model model) {
		System.out.println("index");
		return "index";
	}
	
	@RequestMapping("logaddproduct.do") // 관리자창 상품 등록 페이지
	public String logaddproduct(Model model) {
		System.out.println("logaddproduct");
		return "logaddproduct";
	}
	
	@RequestMapping("logadddesktop.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logadddesktop(Model model) {
		System.out.println("logadddesktop");
		return "logadddesktop";
	}
	
	@RequestMapping("logclassification.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logclassification(Model model) {
		System.out.println("logclassification");
		return "logclassification";
	}
	
	@RequestMapping("logaddnotebook.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logaddnotebook(Model model) {
		System.out.println("logaddnotebook");
		return "logaddnotebook";
	}
	
	@RequestMapping("logaddparts.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logaddparts(Model model) {
		System.out.println("logaddparts");
		return "logaddparts";
	}
	
	@RequestMapping("logadddevice.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logadddevice(Model model) {
		System.out.println("logadddevice");
		return "logadddevice";
	}
	
	@RequestMapping("logmemberlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logmemberlookup(Model model) {
		System.out.println("logmemberlookup");
		return "logmemberlookup";
	}
	
	@RequestMapping("logorderlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logorderlookup(Model model) {
		System.out.println("logorderlookup");
		return "logorderlookup";
	}
	
	@RequestMapping("logproductlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logproductlookup(Model model) {
		System.out.println("logproductlookup");
		return "logproductlookup";
	}
	
	@RequestMapping("logsaleslookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logsaleslookup(Model model) {
		System.out.println("logsaleslookup");
		return "logsaleslookup";
	}
	
	
	
}
