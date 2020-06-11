package com.hardCarry.shopping.dto;

import java.util.Date;

public class ProductEntity {
	long seq;
	String code;
	String name;
	long price;
	String manufacture;
	String etc;
	String sumnailImgPath;
	long stock;
	boolean state;
	Date createDate;
	
	//////////////////////////////////////////////////
	long categorySeq;
}
