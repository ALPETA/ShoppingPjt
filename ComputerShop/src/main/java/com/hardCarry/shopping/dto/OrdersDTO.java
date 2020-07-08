package com.hardCarry.shopping.dto;

import java.util.Date;

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
public class OrdersDTO {

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
	long o_pSeq;
	long o_uSeq;

}
