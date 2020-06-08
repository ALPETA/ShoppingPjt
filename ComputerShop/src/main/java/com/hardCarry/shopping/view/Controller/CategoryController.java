package com.hardCarry.shopping.view.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController { // 카테고리 컨트롤러
	
	@RequestMapping("freq.do") // 자주하는 질문 페이지
	public String freq(Model model) {
		return "freq";
	}
	
	@RequestMapping("freqwrite.do") // 자주하는 질문 상세 페이지
	public String freqwrite(Model model) {
		return "freqwrite";
	}
	
	@RequestMapping("Notice.do") // 공지사항 페이지
	public String Notice(Model model) {
		return "Notice";
	}
	
	@RequestMapping("Noticewrite.do") // 공지사항 상세 페이지
	public String Noticewrite(Model model) {
		return "Noticewrite";
	}
	
	@RequestMapping("qa.do") // Q & A 페이지
	public String qa(Model model) {
		return "qa";
	}
	
	@RequestMapping("qaview.do") // Q & A 상세 페이지
	public String qaview(Model model) {
		return "qaview";
	}
	
}
