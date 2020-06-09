package com.hardCarry.shopping.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor //파라미터 있는 생성자 생성
@NoArgsConstructor // 파라미터 없는 생성자 생성
@Getter
@Setter
public class Product {
	String u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	String u_createDate;
	String u_auth;
}
