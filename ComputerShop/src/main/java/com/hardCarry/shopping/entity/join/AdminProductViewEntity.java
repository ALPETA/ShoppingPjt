package com.hardCarry.shopping.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminProductViewEntity {
	long p_seq;
	String p_code;
	String p_name;
	long p_price;
	String p_manufacture;
	String p_etc;
	String p_sumnailImgPath;
	int p_stock;
	String p_state;
	Date p_Date;
	long ps_seq;
	String ps_cpu;
	String ps_ram;
	String ps_mainboard;
	String ps_hdd;
	String ps_ssd;
	String ps_graphic;
	String ps_case;
	long ps_pSeq;
	
	
}
