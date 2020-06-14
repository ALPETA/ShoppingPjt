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
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;
import com.hardCarry.shopping.service.ProductService;
import com.hardCarry.shopping.service.UserService;

@Controller
public class AdminController { // 관리자 컨트롤러

	@Autowired
	ProductService productService;

	@RequestMapping(value = "adminProduct", method = RequestMethod.GET) /* 상품 등록한 리스트 보기 (log)*/
	public @ResponseBody HashMap<?, ?> getList(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length,HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		String search = request.getParameter("search[value]");
		List<AdminProductViewEntity> list = productService.findAll(start, length, search);
		long totalCount = productService.countAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		result.put("recordsFiltered", totalCount);
		return result;
	}
	
	
	@Autowired
	UserService userservice;
	@RequestMapping(value = "adminUser", method = RequestMethod.GET) /* 회원 정보 리스트 보기(log) */
	public @ResponseBody HashMap<?, ?> getList1(@RequestParam(defaultValue = "0") int start,
			@RequestParam(defaultValue = "10") int length,HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		String search = request.getParameter("search[value]");
		List<AdminUserViewEntity> list = userservice.logmemberlookup(start, length, search);
		long totalCount = userservice.countAll(search);
		result.put("data", list);
		result.put("recordsTotal", totalCount);
		result.put("recordsFiltered", totalCount);
		return result;
	}

	@RequestMapping("logproductlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logproductlookup(Model model) {
		return "log/logproductlookup";
	}

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

	@RequestMapping("lognoticewrite.do") // logaddproduct에서 상품등록 버튼 클릭
	public String lognoticewrite(Model model) {
		return "log/lognoticewrite";
	}

	
	@RequestMapping("logmemberlookup.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logmemberlookup(Model model) {
		return "log/logmemberlookup";
	}

	@RequestMapping("logfreq.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logfreq(Model model) {
		return "log/logfreq";
	}
	
	@RequestMapping("logfreqwrite.do") // logaddproduct에서 상품등록 버튼 클릭
	public String logfreqwrite(Model model) {
		return "log/logfreqwrite";
	}
}
