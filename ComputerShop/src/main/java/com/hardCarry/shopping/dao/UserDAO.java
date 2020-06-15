package com.hardCarry.shopping.dao;

import java.util.HashMap;
import java.util.List;

import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;

public interface UserDAO {
	void save(UsersEntity usersEntity);


	boolean dupId(String id);
	
	boolean pwChk(String pw);

	
	List<AdminUserViewEntity> logmemberlookup(HashMap<String, Object> map);

	long countAll(String search);

	

}
