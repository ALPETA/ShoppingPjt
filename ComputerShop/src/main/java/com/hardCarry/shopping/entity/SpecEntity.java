package com.hardCarry.shopping.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SpecEntity {
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
