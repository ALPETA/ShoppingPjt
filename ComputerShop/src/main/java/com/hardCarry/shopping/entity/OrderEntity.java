package com.hardCarry.shopping.entity;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Data
@Getter
@Setter
@AllArgsConstructor //파라미터 있는 생성자 생성
@NoArgsConstructor // 파라미터 없는 생성자 생성
public class OrderEntity {

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

	long u_seq;
	String u_name;
	String u_id;
	String u_pw;
	String u_phone;
	String u_email;
	String u_address;
	Date u_createDate;
	String u_auth;

	public void initDate() {
		o_date = new Date();
	}

	public String codeCreate(long seq) {
		String MD5 = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(Long.toString(seq).getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			MD5 = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			MD5 = null;
		}
		return MD5.substring(0, 8) + seq;
	}
}
