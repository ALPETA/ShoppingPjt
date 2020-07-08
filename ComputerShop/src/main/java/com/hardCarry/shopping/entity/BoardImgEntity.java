
package com.hardCarry.shopping.entity;

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
public class BoardImgEntity {
	long bi_seq;
	String bi_imgPath;

	//////////////////////////////////////////////////
	long bi_bSeq;
}

