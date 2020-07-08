package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FreeBoardUserEntity {
	long b_seq;
	String b_title;
	String b_content;
	Date b_date;
	long b_hit;
	String b_type;
	long b_uSeq;
	
	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;
	
	public void initBoard() {
		b_date = new Date();
	}
}
