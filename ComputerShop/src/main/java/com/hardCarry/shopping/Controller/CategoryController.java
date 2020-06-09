package com.hardCarry.shopping.Controller;

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
	
	@RequestMapping("notice.do") // 공지사항 페이지
	public String notice(Model model) {
		return "notice";
	}
	
	@RequestMapping("noticeview.do") // 공지사항 뷰 페이지
	public String noticeview(Model model) {
		return "noticeview";
	}
	
	@RequestMapping("noticewrite.do") // 공지사항 글 작성 페이지
	public String noticewrite(Model model) {
		return "noticewrite";
	}
	
	@RequestMapping("noticeupdate.do") // Q & A 글 수정 페이지
	public String noticeupdate(Model model) {
		return "noticeupdate";
	}
	
	@RequestMapping("qa.do") // Q & A 페이지
	public String qa(Model model) {
		return "qa";
	}
	
	@RequestMapping("qaview.do") // Q & A 상세 페이지
	public String qaview(Model model) {
		return "qaview";
	}
	
	@RequestMapping("qawrite.do") // Q & A 글 작성 페이지
	public String qawrite(Model model) {
		return "qawrite";
	}
	
	@RequestMapping("qaupdate.do") // Q & A 글 수정 페이지
	public String qaupdate(Model model) {
		return "qaupdate";
	}
	
	@RequestMapping("free.do") // 자유게시판 페이지
	public String free(Model model) {
		return "free";
	}
	
	@RequestMapping("freeview.do") // 자유게시판 상세 페이지
	public String freeview(Model model) {
		return "freeview";
	}
	
	@RequestMapping("freewrite.do") // 자유게시판 글 작성 페이지
	public String freewrite(Model model) {
		return "freewrite";
	}
	
	@RequestMapping("freeupdate.do") // 자유게시판 글 수정 페이지
	public String freeupdate(Model model) {
		return "freeupdate";
	}
	
	@RequestMapping("hi.do") // 자유게시판 글 수정 페이지
	public String hi(Model model) {
		return "hi";
	}
}
