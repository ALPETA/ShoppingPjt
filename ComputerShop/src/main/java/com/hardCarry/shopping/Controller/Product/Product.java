package com.hardCarry.shopping.Controller.Product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.hardCarry.shopping.dto.ProductDTO;
import com.hardCarry.shopping.dto.SpecDTO;
import com.hardCarry.shopping.service.ProductService;

@Controller
@RequestMapping("product")
public class Product {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addProduct(ProductDTO productDTO, SpecDTO specDTO, MultipartFile files, HttpServletRequest request)
			throws Exception {
		productService.save(productDTO, specDTO, files, request);
		return "redirect:../logproductlookup.do";
	}
}
