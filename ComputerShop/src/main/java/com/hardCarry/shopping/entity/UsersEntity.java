package com.hardCarry.shopping.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UsersEntity {
	long seq;
	String name;
	String id;
	String pw;
	String phone;
	String email;
	String address;
	Date createDate;
	String auth;
}
