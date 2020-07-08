package com.hardCarry.shopping.entity;

import java.util.Date;

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
public class BoardEntity {
	long b_seq;
	String b_type;
	String b_title;
	String b_content;
	long b_hit;
	String b_imgPath;
	Date b_date;
	
	long b_uSeq;
	
	public void initBoard() {
		b_date = new Date();
	}
}
