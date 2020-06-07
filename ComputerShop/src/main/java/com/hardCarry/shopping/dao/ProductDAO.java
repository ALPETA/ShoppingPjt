package com.hardCarry.shopping.dao;

import java.util.List;

import com.hardCarry.shopping.entity.Product;

public interface ProductDAO {
	List<Product> selectAll();

	List<Product> selectById(String id);

	List<Product> selectByPwId(Product product);

	void insertMember(Product product);
}
