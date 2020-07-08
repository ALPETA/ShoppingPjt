package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class AdminuopViewEntity {
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
	
	long ps_seq;
	long ps_pSeq;
	String ps_cpu;
	String ps_ram;
	String ps_hdd;
	String ps_graphic;
	String ps_mainboard;
	String ps_ssd;
	String ps_cpuprice; // 부품별 가격
	String ps_ramprice;
	String ps_hddprice;
	String ps_vgaprice;
	String ps_mainprice;
	String ps_ssdprice;
}
