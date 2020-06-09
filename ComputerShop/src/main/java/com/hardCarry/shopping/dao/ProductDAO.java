package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.Product;

public interface ProductDAO {
	List<Product> selectAll();
	
	List<HashMap<String, Object>> selectAll1() throws Exception;

	List<Product> selectById(String id);

	List<Product> selectByPwId(Product product);

	void insertMember(Product product);
	
	List<HashMap<String, Object>> insertProduct() throws Exception;
}
