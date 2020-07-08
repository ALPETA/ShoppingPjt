package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
	CommonsFileUpload commons;

	@Transactional
	public boolean deleteAll(String[] p_seq) {
		for (String s : p_seq) {
			specDAO.delete(Long.parseLong(s));
			productDAO.delete(Long.parseLong(s));
		}
		return true;
	}

	@Transactional
	public void save(ProductDTO productDTO, SpecDTO specDTO, MultipartFile files) throws Exception {
		ProductEntity productEntity = mapper.map(productDTO, ProductEntity.class);
		String imgName = commons.getRenameFile(files);

		productEntity.setP_sumnailImgPath(CommonsFileUpload.MAIN_IMG_PATH + imgName);
		SpecEntity specEntity = mapper.map(specDTO, SpecEntity.class);
		productEntity.initProduct();

		 //for(int i =0;i<10;i++) {
		productDAO.save(productEntity);

		// 상품 코드 등록
		this.createCode(productEntity);

		commons.fileWrite(files, commons.getMainImgPath() + imgName);

		// 상품 스펙 등록
		this.createSpec(specEntity, productEntity);
		 //}
	}

	public long productlookupupdatedesktop(AdminProductViewEntity adminProductEntity, MultipartFile files) {
		String imgName = commons.getRenameFile(files);
		adminProductEntity.setP_sumnailImgPath(CommonsFileUpload.MAIN_IMG_PATH + imgName);
		commons.fileWrite(files, commons.getMainImgPath() + imgName);
		return productDAO.productlookupupdatedesktop(adminProductEntity);
	}

	public void createSpec(SpecEntity specEntity, ProductEntity productEntity) {
		specEntity.setPs_pSeq(productEntity.getP_seq());
		specDAO.save(specEntity);
	}

	public void createCode(ProductEntity productEntity) {
		productEntity.setP_seq(productDAO.finalSeq());
		String code = productEntity.codeCreate(productEntity.getP_seq());
		productEntity.setP_code(code);
		productDAO.update(productEntity);
	}

	// 관리자 상품 리스트 보기
	public List<AdminProductViewEntity> findAll(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		return productDAO.findAll(map);
	}

	public List<AdminProductViewEntity> countAll(String search, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("p_use", p_use);
		map.put("p_category", p_category);
		return productDAO.countAll(map);
	}

	public long countAll1(String search, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("p_use", p_use);
		map.put("p_category", p_category);
		return productDAO.countAll1(map);
	}

	// 관리자 상품 리스트 보기 끝
	public List<AdminProductViewEntity> findAllProduct(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("size", length);
		map.put("search", search);
		return productDAO.findAllProduct(map);
	}

	public List<AdminProductViewEntity> findBySeq(String p_seq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("p_seq", p_seq);
		return productDAO.findBySeq(map);
	}




	public long productlookupupdatedesktop(AdminProductViewEntity adminProductEntity) {
		return productDAO.productlookupupdatedesktop(adminProductEntity);
	}

	public AdminProductViewEntity productAll(String a) {
		return productDAO.productAll(a);
	}

	public long countproductAll(String search) {
		return productDAO.countproductAll(search);
	}

	public List<AdminProductViewEntity> findDesktop(int page, int length, String search, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("p_category", p_category);
		map.put("p_use", p_use);
		map.put("search", search);
		return productDAO.findDesktop(map);
	}

	public List<AdminProductViewEntity> findNotebook(int page, int length, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("p_use", p_use);
		map.put("p_category", p_category);
		return productDAO.findNotebook(map);
	}

	public List<AdminProductViewEntity> findPart(int page, int length, String search, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("search", search);
		map.put("p_use", p_use);
		map.put("p_category", p_category);
		return productDAO.findPart(map);
	}

	public List<AdminProductViewEntity> findSpek(int page, int length, String p_use, String p_category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page * length);
		map.put("size", length);
		map.put("p_use", p_use);
		map.put("p_category", p_category);
		return productDAO.findSpek(map);
	}

	// 상품 등록 부품 리스트
	// cpu 리스트 보기
	public List<ProductEntity> findCpu() {
		return productDAO.findCpu();
	}

	// ram 리스트 보기
	public List<ProductEntity> findRam() {
		return productDAO.findRam();
	}

	// mainboard 리스트 보기
	public List<ProductEntity> findMain() {
		return productDAO.findMain();
	}

	// graphic 리스트 보기
	public List<ProductEntity> findVga() {
		return productDAO.findVga();
	}

	// hdd 리스트 보기
	public List<ProductEntity> findHdd() {
		return productDAO.findHdd();
	}

	// ssd 리스트 보기
	public List<ProductEntity> findSsd() {
		return productDAO.findSsd();
	}
	// 상품 등록 부품 리스트 끝
}
