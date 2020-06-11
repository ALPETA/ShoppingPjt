package com.hardCarry.shopping.entity;

import java.util.Date;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductEntity {
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

	public void initProduct() {
		this.p_stock = 0;
		this.p_state = "YES";
		p_Date = new Date();
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
