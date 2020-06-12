package com.hardCarry.shopping.dao;

import com.hardCarry.shopping.entity.UsersEntity;

public interface UserDAO {
	void save(UsersEntity usersEntity);

	boolean dupId(String id);
	
	boolean pwChk(String pw);
}
