package com.hardCarry.shopping.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReplyDTO {
	long r_seq;
	String r_content;
	Date r_createDate;
	
	long r_uSeq;
	long r_bSeq;
}
