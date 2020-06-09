package com.hardCarry.shopping;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hardCarry.shopping.dao.ProductDAO;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	ProductDAO productdao;
	
	@RequestMapping("logcategory.do") //관리자창 메인
	public String logcategory(Model model) throws Exception {
		List<HashMap<String, Object>> mainList = productdao.selectAll1();
		System.out.println(mainList);
		System.out.println("as");
		return "log/logcategory";
	}
	
	@RequestMapping("index.do") // 메인
	public String index(Model model) {
		System.out.println("index");
		return "index";
	}
	
	@RequestMapping("logaddproduct.do") // 관리자창 상품 등록 페이지
	public String logaddproduct(Model model) {
		System.out.println("logaddproduct");
		return "log/logaddproduct";
	}
	
	@RequestMapping("logadddesktop.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logadddesktop(Model model) {
		System.out.println("logadddesktop");
		return "log/logadddesktop";
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
	
	@RequestMapping("logmemberlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logmemberlookup(Model model) {
		System.out.println("logmemberlookup");
		return "log/logmemberlookup";
	}
	
	@RequestMapping("logorderlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logorderlookup(Model model) {
		System.out.println("logorderlookup");
		return "log/logorderlookup";
	}
	
	@RequestMapping("logproductlookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logproductlookup(Model model) {
		System.out.println("logproductlookup");
		return "log/logproductlookup";
	}
	
	@RequestMapping("logsaleslookup.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String logsaleslookup(Model model) {
		System.out.println("logsaleslookup");
		return "log/logsaleslookup";
	}
	
	@RequestMapping("lognotice.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String lognotice(Model model) {
		System.out.println("lognotice");
		return "log/lognotice";
	}
	
	@RequestMapping("test.do") // logaddproduct에서 상품등록 버튼 클릭 
	public String test(Model model) {
		System.out.println("lognotice");
		return "log/123";
	}
	
	
}
