package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminBoardEntity {
	long b_seq;
	String b_type;
	String b_title;
	String b_content;
	String b_imgPath;
	long b_hit;
	Date b_date;

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
	
	long r_seq;
	String r_content;
	Date r_createDate;
	long r_uSeq;
	long r_bSeq;

	public void initBoard() {
		b_date = new Date();
	}
	
	public void initBoardo() {
		r_createDate = new Date();
	}

}