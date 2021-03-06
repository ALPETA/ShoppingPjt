package com.hardCarry.shopping.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SpecDTO {
	long ps_seq;
	long ps_pSeq; // 외래키
	String ps_cpu;
	String ps_ram;
	String ps_mainboard;
	String ps_hdd;
	String ps_ssd;
	String ps_graphic;

	String ps_cpuprice; // 부품별 가격
	String ps_ramprice; // 부품별 가격
	String ps_mainprice; // 부품별 가격
	String ps_hddrice; // 부품별 가격
	String ps_ssdprice; // 부품별 가격
	String ps_vgaprice; // 부품별 가격
}
