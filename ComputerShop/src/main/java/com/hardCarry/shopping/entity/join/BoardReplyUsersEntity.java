package com.hardCarry.shopping.entity.join;

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
public class BoardReplyUsersEntity {
	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;
	
	long b_seq;
	String b_title;
	String b_content;
	Date b_date;
	long b_hit;
	String b_type;
	String b_imgPath;
	long b_uSeq;
	
	long r_seq;
	String r_content;
	Date r_createDate;
	long r_uSeq;
	long r_bSeq;
}