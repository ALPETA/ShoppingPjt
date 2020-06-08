package com.hardCarry.shopping.service;

import org.springframework.stereotype.Service;

import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;

@Service
public class UserService {
	public UsersEntity save(UsersDTO usersDTO) {
		UsersEntity saveUser = UsersEntity.builder().id(usersDTO.getId()).build();
		return saveUser;
	}
}
