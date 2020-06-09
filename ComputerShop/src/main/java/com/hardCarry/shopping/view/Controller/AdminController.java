package com.hardCarry.shopping.view.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController { // 관리자 컨트롤러
	
	@RequestMapping("logcategory.do") // 관리자 메인 페이지
	public String logcategory(Model model) {
		return "./log/logcategory";
	}
	
	@RequestMapping("logadddesktop.do") // 관리자 메인 페이지
	public String logadddesktop(Model model) {
		return "./log/logadddesktop";
	}
	
	@RequestMapping("logproductlookup.do") // 관리자 주문 내역 페이지
	public String logproductlookup(Model model) {
		System.out.println("log");
		return "./log/logproductlookup";
	}
	
	@RequestMapping("logorderlookup.do") // 관리자 상품 조회 페이지
	public String logorderlookup(Model model) {
		return "./log/logorderlookup";
	}
	
	@RequestMapping("Productregistration.do") // 관리자 상품 등록 페이지
	public String Productregistration(Model model) {
		return "./log/Productregistration";
	}
	
	@RequestMapping("logsaleslookup.do") // 관리자 매출 조회 페이지
	public String logsaleslookup(Model model) {
		return "./log/logsaleslookup";
	}
		
	@RequestMapping("lognotice.do") // 관리자 광고 이미지 페이지
	public String lognotice(Model model) {
		return "./log/lognotice";
	}
	
	@RequestMapping("logmemberlookup.do") // 관리자 광고 이미지 페이지
	public String logmemberlookup(Model model) {
		return "./log/logmemberlookup";
	}
}
