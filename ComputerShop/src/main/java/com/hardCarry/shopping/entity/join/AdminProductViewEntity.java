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
	String p_use;
	String p_category;
	String p_name;
	String p_price;
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
