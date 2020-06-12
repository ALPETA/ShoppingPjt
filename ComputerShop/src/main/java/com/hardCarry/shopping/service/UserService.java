package com.hardCarry.shopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hardCarry.shopping.dao.UserDAO;
import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;

@Service
public class UserService {

	@Autowired
	UserDAO userDAO;

	public UsersEntity save(UsersDTO usersDTO) {
		UsersEntity saveUser = UsersEntity.builder().id(usersDTO.getId()).name(usersDTO.getName()).id(usersDTO.getId()).
				pw(usersDTO.getPw()).phone(usersDTO.getPhone()).email(usersDTO.getEmail()).address(usersDTO.getAddress()).build();
		userDAO.save(saveUser);
		return saveUser;
	}
	

	public boolean dupId(String id) {
		return userDAO.dupId(id);
	}
}
