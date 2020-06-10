package com.hardCarry.shopping.view.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AdminController { // 관리자 컨트롤러
	
	@RequestMapping("logaddproduct.do") // 관리자창 상품 등록 페이지
	public String logaddproduct(Model model) {
		System.out.println("logaddproduct");
		return "log/logaddproduct";
	}

	@RequestMapping("logclassification.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logclassification(Model model) {
		System.out.println("logclassification");
		return "log/logclassification";
	}

	@RequestMapping("logaddnotebook.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logaddnotebook(Model model) {
		System.out.println("logaddnotebook");
		return "log/logaddnotebook";
	}

	@RequestMapping("logaddparts.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logaddparts(Model model) {
		System.out.println("logaddparts");
		return "log/logaddparts";
	}

	@RequestMapping("logadddevice.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logadddevice(Model model) {
		System.out.println("logadddevice");
		return "log/logadddevice";
	}
	
	@RequestMapping("logcategory.do") // 관리자 메인 페이지1
	public String logcategory(Model model) {
		return "log/logcategory";
	}
	
	@RequestMapping("logadddesktop.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logadddesktop(Model model) {
		return "log/logadddesktop";
	}
	
	@RequestMapping("logproductlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logproductlookup(Model model) {
		System.out.println("log");
		return "log/logproductlookup";
	}
	
	@RequestMapping("logorderlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logorderlookup(Model model) {
		return "log/logorderlookup";
	}
	
	@RequestMapping("Productregistration.do") // 관리자 상품 등록 페이지
	public String Productregistration(Model model) {
		return "log/Productregistration";
	}
	
	@RequestMapping("logsaleslookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logsaleslookup(Model model) {
		return "log/logsaleslookup";
	}
		
	@RequestMapping("lognotice.do") // logaddproduct에서 상품등록 버튼 클릭
	public String lognotice(Model model) {
		return "log/lognotice";
	}
	
	@RequestMapping("logmemberlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logmemberlookup(Model model) {
		return "log/logmemberlookup";
	}
	
}
