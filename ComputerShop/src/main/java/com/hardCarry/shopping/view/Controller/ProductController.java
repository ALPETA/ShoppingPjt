package com.hardCarry.shopping.view.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController { // 제품 컨트롤러
	
	/*
	 * @Autowired ProductService productService;
	 */
	
	@RequestMapping("product.do") // 제품 페이지
	public String product(Model model){
		return "product";
	}
	
	@RequestMapping("productView.do") // 제품 상세 페이지
	public String productView(Model model){
		return "productView";
	}
	
	/*
	 * @RequestMapping(value = "adminProduct", method = RequestMethod.GET)
	 * public @ResponseBody HashMap<?, ?> getProduct(@RequestParam(defaultValue =
	 * "0") int start,
	 * 
	 * @RequestParam(defaultValue = "10") int length,HttpServletRequest request)
	 * throws Exception { HashMap<String, Object> result = new HashMap<String,
	 * Object>(); String search = request.getParameter("search[value]");
	 * List<AdminProductViewEntity> list = productService.findProduct(start, length,
	 * search); long totalCount = productService.countAll(search);
	 * result.put("data", list); result.put("recordsTotal", totalCount);
	 * result.put("recordsFiltered", totalCount);
	 * 
	 * return result; }
	 */
}
