package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.ProductEntity;
import com.hardCarry.shopping.entity.join.AdminProductViewEntity;


public interface ProductDAO {
	void save(ProductEntity productEntity);

	void update(ProductEntity productEntity);

	long finalSeq();

	List<AdminProductViewEntity> findAll(HashMap<String, Object> map);

	long countproductAll(String search);

	/* List<AdminProductViewEntity> findProduct(HashMap<String, Object> map); */

	List<AdminProductViewEntity> countAll(HashMap<String, Object> map);
	
	long countAll1(HashMap<String, Object> map);

	List<AdminProductViewEntity> findAllProduct(HashMap<String, Object> map);

	ProductEntity findBySeq(long seq);
	

	void delete(long seq); // log 상품 조회 삭제 코드

	long productlookupupdatedesktop(AdminProductViewEntity adminProductEntity); /* 관리자 상품 상세 페이지 update(desktop) */

	AdminProductViewEntity productAll(String a);

	List<AdminProductViewEntity> findDesktop(HashMap<String, Object> map); // 상품 메인

	long countDesktop(String search);

	List<AdminProductViewEntity> findBySeq(HashMap<String, Object> map); // view
	

	List<AdminProductViewEntity> findNotebook(HashMap<String, Object> map);

	long countNotebook(String search);

	List<AdminProductViewEntity> findPart(HashMap<String, Object> map);

	long countPart(String search);

	List<AdminProductViewEntity> findSpek(HashMap<String, Object> map);

	long countSpek(String search);

	// 상품 등록 부품 리스트
	// cpu 리스트 보기
	List<ProductEntity> findCpu();

	// ram 리스트 보기
	List<ProductEntity> findRam();

	// mainboard 리스트 보기
	List<ProductEntity> findMain();

	// graphic 리스트 보기
	List<ProductEntity> findVga();

	// hdd 리스트 보기
	List<ProductEntity> findHdd();

	// ssd 리스트 보기
	List<ProductEntity> findSsd();
	// 상품 등록 부품 리스트 끝
}
