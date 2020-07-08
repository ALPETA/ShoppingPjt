package com.hardCarry.shopping.Controller.Product;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hardCarry.shopping.dto.ProductDTO;
import com.hardCarry.shopping.dto.SpecDTO;
import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.join.AdminProductViewEntity;
import com.hardCarry.shopping.service.ProductService;

@Controller
@RequestMapping("product")
public class Product {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String save(ProductDTO productDTO, SpecDTO specDTO, MultipartFile files) throws Exception {
		productService.save(productDTO, specDTO, files);
		return "redirect:../logproductlookup.do";
	}

	@RequestMapping(value = "delete", method = RequestMethod.POST)
	@ResponseBody
	public boolean deleteCheckProduct(String p_seq) {
		String[] seq = p_seq.split(",");
		productService.deleteAll(seq);
		return true;
	}

	@RequestMapping(value = "addupdatedesktop", method = RequestMethod.POST)
	public String addProductdesktop(AdminProductViewEntity adminProductEntity, MultipartFile files) throws Exception {
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ시작ㅡ");
		System.out.println(productService.productlookupupdatedesktop(adminProductEntity, files));
		productService.productlookupupdatedesktop(adminProductEntity, files);
		return "redirect:../logproductlookup.do";
	}

	// 상품 등록 부품 리스트
	@RequestMapping(value = "getCpu", method = RequestMethod.GET) /* cpu 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getCpu() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findCpu();
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getRam", method = RequestMethod.GET) /* ram 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getRam() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findRam();
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getMain", method = RequestMethod.GET) /* mainboard 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getMain() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findMain();
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getVga", method = RequestMethod.GET) /* graphic 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getVga() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findVga();
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getHdd", method = RequestMethod.GET) /* hdd 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getHdd() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findHdd();
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getSsd", method = RequestMethod.GET) /* ssd 리스트 보기 */
	public @ResponseBody HashMap<?, ?> getSsd() throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ProductEntity> list = productService.findSsd();
		result.put("data", list);
		return result;
	}
	// 상품 등록 부품 리스트 끝
}
