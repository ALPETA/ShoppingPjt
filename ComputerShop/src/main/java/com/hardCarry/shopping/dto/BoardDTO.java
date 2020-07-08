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
public class BoardDTO {
	long b_seq;
	String b_title;
	String b_content;
	Date b_date;
	long b_hit;
	String b_type;
	
	long b_uSeq;
	
	public void initBoard() {
		b_date = new Date();
	}
}
