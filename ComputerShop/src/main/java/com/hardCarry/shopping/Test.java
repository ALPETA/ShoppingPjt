package com.hardCarry.shopping;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;

public class Test {

	@org.junit.Test
	public void test() {
		List<UsersEntity> entity = new ArrayList<>();
		List<UsersDTO> result = entity.stream().map(c -> UsersDTO.builder().id(c.getId()).pw(c.getPw()).build())
				.collect(Collectors.toList());
	}
}
