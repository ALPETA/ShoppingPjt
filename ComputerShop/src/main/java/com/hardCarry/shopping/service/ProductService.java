package com.hardCarry.shopping.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.inject.Provider;
import javax.servlet.http.HttpServletRequest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hardCarry.shopping.dao.ProductDAO;
import com.hardCarry.shopping.dao.SpecDAO;
import com.hardCarry.shopping.dto.ProductDTO;
import com.hardCarry.shopping.dto.SpecDTO;
import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.SpecEntity;
import com.hardCarry.shopping.entity.join.AdminProductViewEntity;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	SpecDAO specDAO;

	@Autowired
	ModelMapper mapper;

	@Autowired
	Provider<CommonsFileUpload> commons;

	public void save(ProductDTO productDTO, SpecDTO specDTO, MultipartFile files, HttpServletRequest request)
			throws Exception {
		final String REAL_PATH = request.getSession().getServletContext().getRealPath("resources\\imgs\\mainImg");
		ProductEntity productEntity = mapper.map(productDTO, ProductEntity.class);
		productEntity.setP_sumnailImgPath(REAL_PATH + "/" + files.getOriginalFilename());
		SpecEntity specEntity = mapper.map(specDTO, SpecEntity.class);
		productEntity.initProduct();
		productDAO.save(productEntity);
		productEntity.setP_seq(productDAO.finalSeq());
		String code = productEntity.codeCreate(productEntity.getP_seq());
		productEntity.setP_code(code);
		productDAO.update(productEntity);
		files.transferTo(new File(REAL_PATH + "/" + files.getOriginalFilename()));
		specEntity.setPs_pSeq(productEntity.getP_seq());
		specDAO.save(specEntity);
	}

	public List<AdminProductViewEntity> findAll(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("size", length);
		map.put("search", search);
		return productDAO.findAll(map);
	}

	public long countAll(String search) {
		return productDAO.countAll(search);
	}
}
