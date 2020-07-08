package com.hardCarry.shopping.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardUserDTO {
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
}
