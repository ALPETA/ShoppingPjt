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

	long countAll(String search);
	
	/* List<AdminProductViewEntity> findProduct(HashMap<String, Object> map); */
}
