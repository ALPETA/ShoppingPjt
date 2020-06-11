package com.hardCarry.shopping.view.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController { // 사용자 컨트롤러
	@RequestMapping("index.do")
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping("signUp.do")
	public String signUp(Model model) {
		return "signUp";
	}

	@RequestMapping("shoppingCart.do")
	public String shoppingCart(Model model) {
		return "shoppingCart";
	}
	
	@RequestMapping("login.do") // 로그인 페이지
	public String login(Model model) {
		return "login";
	}
	
	@RequestMapping("membership.do") // 회원가입 페이지
	public String membership(Model model) {
		return "membership";
	}
	
	@RequestMapping("find.do") // 아이디, 비밀번호 찾기 페이지
	public String findid(Model model) {
		return "findid";
	}
	
	@RequestMapping("pwchange.do") // 비밀번호 변경 페이지
	public String pwchange(Model model) {
		return "pwchange";
	}
	
	@RequestMapping("mypage.do") // My Page 
	public String mypage(Model model) {
		return "mypage";
	}
	
	@RequestMapping("infochange.do") // 회원정보 수정 페이지
	public String infochange(Model model) {
		return "infochange";
	}
	
	@RequestMapping("shoppingbasket.do") // 장바구니 페이지
	public String shoppingbasket(Model model) {
		return "shoppingbasket";
	}
	
	@RequestMapping("Ordering.do") // 주문 페이지
	public String Ordering(Model model) {
		return "Ordering";
	}
	
	@RequestMapping("Ordercheck.do") // 주문 조회 페이지
	public String Ordercheck(Model model) {
		return "Ordercheck";
	}
	
	@RequestMapping("myview.do") // 내가 쓴 글 페이지
	public String myview(Model model) {
		return "myview";
	}
	
	@RequestMapping("mywrite.do") // 내가 쓴 글 상세 페이지
	public String mywrite(Model model) {
		return "mywrite";
	}
	
}
