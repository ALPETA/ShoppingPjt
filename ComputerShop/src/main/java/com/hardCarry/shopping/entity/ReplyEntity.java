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
public class ReplyEntity {
	long r_seq;
	String r_content;
	Date r_createDate;
	
	//////////////////////////////////////////////////
	long r_uSeq;
	long r_bSeq;
	
	public void initBoard() {
		r_createDate = new Date();
	}
}