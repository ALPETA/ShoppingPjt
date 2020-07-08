package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class AdminOrderslookupViewEntity {
	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;
	
	long o_seq;
	String o_code;
	String o_sendname;
	String o_sendphone;
	String o_sendAddress;
	long o_totalPrice;
	int o_stock;
	String o_message;
	byte o_responseType;
	Date o_date;
	String o_payment;
	long o_productSeq;
	long o_userSeq;
	
	long p_seq;
	String p_code;
	String p_category;
	String p_use;
	String p_name;
	long p_price;
	String p_manufacture;
	String p_etc;
	String p_sumnailImgPath;
	String p_stock;
	String p_state;
	Date p_Date;
	

}
