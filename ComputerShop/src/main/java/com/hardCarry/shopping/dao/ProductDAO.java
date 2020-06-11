package com.hardCarry.shopping.dao;

import com.hardCarry.shopping.entity.ProductEntity;

public interface ProductDAO {
	void save(ProductEntity productEntity);

	void update(ProductEntity productEntity);

	long finalSeq();
}
