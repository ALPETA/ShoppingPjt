package com.hardCarry.shopping.view.Controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hardCarry.shopping.entity.join.AdminProductViewEntity;


import com.hardCarry.shopping.service.ProductService;

@Controller
public class ProductController { // 제품 컨트롤러

	@Autowired
	ProductService productService;

	/*
	 * @RequestMapping(value = "product", method = RequestMethod.GET) // TEST용
	 * public @ResponseBody HashMap<?, ?> findAllProduct(@RequestParam(defaultValue
	 * = "0") int start,
	 * 
	 * @RequestParam(defaultValue = "5") int length, HttpServletRequest request)
	 * throws Exception { HashMap<String, Object> result = new HashMap<String,
	 * Object>(); String search = request.getParameter("search[value]") == null ? ""
	 * : request.getParameter("search[value]"); List<AdminProductViewEntity> list =
	 * productService.findAll(start, length, search); long totalCount =
	 * productService.countAll(search); result.put("data", list);
	 * result.put("recordsTotal", totalCount); result.put("recordsFiltered",
	 * totalCount); return result; }
	 */
	
	@RequestMapping(value = "Desktop", method = RequestMethod.GET) // 데스크탑 페이지
	public @ResponseBody HashMap<?, ?> findDesktopProduct(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "8") int length, @RequestParam(defaultValue = "") String search,
			@RequestParam(defaultValue = "") String p_use, @RequestParam(defaultValue = "") String p_category, 
			HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminProductViewEntity> list = productService.findDesktop(start, length, search, p_use, p_category); 
		List<AdminProductViewEntity> totalCount = productService.countAll(search, p_use, p_category); 
		result.put("data", list);
		result.put("recordsTotal", totalCount); 
		System.out.println("list" + list);
		System.out.println("total" + totalCount);
		System.out.println("도착");
		return result;
	}
	
	@RequestMapping("product.do") // 데스크탑 페이지
	public String product(Model model) {
		return "product/product";
	}

	@RequestMapping("product") // 데스크탑 페이지
	public String product(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");
		String b[] = a.split(",");
		String use = b[0];
		String category = b[1];
		model.addAttribute("a", a);
		model.addAttribute("use", use);
		model.addAttribute("category", category);
		return "product/product";
	}
	
	@RequestMapping("productView.do") // 데스크탑 상세 페이지
	public String productView(Model model, @RequestParam(required = true) long seq, HttpServletRequest request) {
		String p_seq = request.getParameter("seq");
		String price = request.getParameter("price");
		String use = request.getParameter("use");
		String category = request.getParameter("category");
		model.addAttribute("product", p_seq);
		model.addAttribute("price",price);
		model.addAttribute("use", use);
		model.addAttribute("category", category);
		/* model.addAttribute("p_use", p_use); */
		return "product/productView";
	}
	
	@RequestMapping(value = "seq", method = RequestMethod.GET) // 데스크탑, 노트북, 부품, 주변기기 상세 페이지
	public @ResponseBody HashMap<?, ?> productView(@RequestParam(defaultValue = "") String p_seq,
			HttpServletRequest request) throws Exception {
		System.out.println(p_seq);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminProductViewEntity> product = productService.findBySeq(p_seq);
		result.put("data", product);
		System.out.println(product);
		return result;
	}
	
	/*
	 * @RequestMapping(value = "Notebook", method = RequestMethod.GET) // 노트북 페이지
	 * public @ResponseBody HashMap<?, ?>
	 * findNotebookProduct(@RequestParam(defaultValue = "0") int start,
	 * 
	 * @RequestParam(defaultValue = "8") int length, @RequestParam(defaultValue =
	 * "") String p_use,
	 * 
	 * @RequestParam(defaultValue = "") String p_category, HttpServletRequest
	 * request) throws Exception { HashMap<String, Object> result = new
	 * HashMap<String, Object>(); List<AdminProductViewEntity> list =
	 * productService.findNotebook(start, length, p_use, p_category); long
	 * totalCount = productService.countAll(p_use, p_category); result.put("data",
	 * list); result.put("recordsTotal", totalCount); return result; }
	 */
	
	@RequestMapping("notebook.do") // 노트북 페이지
	public String notebook(Model model) {
		return "product/notebook";
	}

	@RequestMapping("notebook") // 노트북 페이지
	public String notebook(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");
		model.addAttribute("a", a);
		return "product/notebook";
	}
	
	@RequestMapping("notebookView.do") // 노트북 상세 페이지
	public String notebookView(Model model, @RequestParam(required = true) long seq, HttpServletRequest request) {
		String a = request.getParameter("seq");
		String price = request.getParameter("price");
		model.addAttribute("product", a);
		model.addAttribute("price",price);	
		return "product/notebookView";
	}

	/*
	 * @RequestMapping(value = "Spek", method = RequestMethod.GET) // 부품 페이지
	 * public @ResponseBody HashMap<?, ?> findSpekProduct(@RequestParam(defaultValue
	 * = "0") int start,
	 * 
	 * @RequestParam(defaultValue = "8") int length, @RequestParam(defaultValue =
	 * "") String p_use,
	 * 
	 * @RequestParam(defaultValue = "") String p_category, HttpServletRequest
	 * request) throws Exception { HashMap<String, Object> result = new
	 * HashMap<String, Object>(); List<AdminProductViewEntity> list =
	 * productService.findSpek(start, length, p_use, p_category); long totalCount =
	 * productService.countAll1(p_use, p_category); result.put("data", list);
	 * result.put("recordsTotal", totalCount); return result; }
	 */
	
	@RequestMapping("spek.do") // 부품 페이지
	public String spek(Model model) {
		return "product/spek";
	}

	@RequestMapping("spek") // 부품 페이지
	public String spek(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");
		model.addAttribute("a", a);
		return "product/spek";
	}
	
	@RequestMapping("spekView.do") // 부품 상세 페이지
	public String spekView(Model model, @RequestParam(required = true) long seq, HttpServletRequest request) {
		String a = request.getParameter("seq");
		String price = request.getParameter("price");
		model.addAttribute("product", a);
		model.addAttribute("price",price);
		return "product/spekView";
	}
	
	@RequestMapping(value = "Part", method = RequestMethod.GET) // 주변기기 페이지
	public @ResponseBody HashMap<?, ?> findPartProduct(@RequestParam(defaultValue = "") int start,
			@RequestParam(defaultValue = "8") int length, @RequestParam(defaultValue = "") String p_use,
			@RequestParam(defaultValue = "") String search, @RequestParam(defaultValue = "") String p_category, HttpServletRequest request) throws Exception {
		System.out.println(start + "asdf");
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<AdminProductViewEntity> list = productService.findPart(start, length, search, p_use, p_category);
		List<AdminProductViewEntity> totalCount = productService.countAll(search, p_use, p_category); 
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		System.out.println(list + "asdf");
		System.out.println(totalCount + "asdf");
		return result;
	}
	
	@RequestMapping("part.do") // 주변기기 페이지
	public String part(Model model) {
		return "product/part";
	}

	@RequestMapping("part") // 주변기기 페이지
	public String part(Model model, HttpServletRequest request) {
		String a = request.getParameter("name");
		String b[] = a.split(",");
		String use = b[0];
		String category = b[1];
		model.addAttribute("a", a);
		model.addAttribute("use", use);
		model.addAttribute("category", category);
		return "product/part";
	}
	
	@RequestMapping("partView.do") // 주변기기 상세 페이지
	public String partView(Model model, @RequestParam(required = true) long seq, HttpServletRequest request) {
		String a = request.getParameter("seq");
		String price = request.getParameter("price");
		String use = request.getParameter("use");
		String category = request.getParameter("category");
		model.addAttribute("product", a);
		model.addAttribute("price",price);
		model.addAttribute("use", use);
		model.addAttribute("category", category);
		System.out.println(price + "^^");
		System.out.println(use + "^^");
		return "product/partView";
	}
	
}