package com.hardCarry.shopping.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController { // 제품 컨트롤러
	
	@RequestMapping("product.do") // 제품 페이지
	public String product(Model model){
		return "product";
	}
	
	@RequestMapping("productView.do") // 제품 상세 페이지
	public String productView(Model model){
		return "productView";
	}
}
