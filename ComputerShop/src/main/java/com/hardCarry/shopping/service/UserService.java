package com.hardCarry.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hardCarry.shopping.dao.UserDAO;
import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.entity.join.AdminProductViewEntity;
import com.hardCarry.shopping.entity.join.AdminUserViewEntity;

@Service
public class UserService {

	@Autowired
	UserDAO userDAO;
	

	public UsersEntity save(UsersDTO usersDTO) {
		UsersEntity saveUser = UsersEntity.builder().u_id(usersDTO.getU_id()).u_name(usersDTO.getU_name()).u_id(usersDTO.getU_id()).
				u_pw(usersDTO.getU_pw()).u_phone(usersDTO.getU_phone()).u_email(usersDTO.getU_email()).u_address(usersDTO.getU_address()).build();
		userDAO.save(saveUser);
		return saveUser;
	}
	


	public boolean dupId(String id) {
		return userDAO.dupId(id);
	}

	
	public List<AdminUserViewEntity> logmemberlookup(int page, int length, String search) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("size", length);
		map.put("search", search);
		return userDAO.logmemberlookup(map);
	}

	public long countAll(String search) {
		return userDAO.countAll(search);
	}
	
	

}
