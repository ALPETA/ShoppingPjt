package com.hardCarry.shopping.dto;

import java.util.Date;

public class OrderEntity {
	long seq;
	String code;
	String sendAddress;
	long totalPrice;
	int stock;
	String message;
	byte responseType;
	Date createDate;
	
	//////////////////////////////////////////////////
	long productSeq;
	long userSeq;
}
