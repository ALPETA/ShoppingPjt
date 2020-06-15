package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class AdminUserViewEntity {
	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;

}
