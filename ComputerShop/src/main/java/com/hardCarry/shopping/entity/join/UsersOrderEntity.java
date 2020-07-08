package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UsersOrderEntity {
	
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
	long o_productSeq;
	long o_userSeq;
	
	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;
	
	long p_seq;
	String p_code;
	String p_use;
	String p_category;
	String p_name;
	long p_price;
	String p_manufacture;
	String p_etc;
	String p_sumnailImgPath;
	String p_stock;
	String p_state;
	Date p_Date;
	
	String ps_cpu;
	String ps_ram;
	String ps_mainboard;
	String ps_hdd;
	String ps_ssd;
	String ps_graphic;
	String ps_case;
	long ps_pSeq;
}
