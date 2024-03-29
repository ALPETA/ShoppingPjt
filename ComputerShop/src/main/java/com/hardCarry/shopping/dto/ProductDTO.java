package com.hardCarry.shopping.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ProductDTO {
	String p_use;
	String p_category;
	String p_name;
	long p_price;
	String p_manufacture;
	String p_etc;
	String p_stock;
	String p_state;
}
