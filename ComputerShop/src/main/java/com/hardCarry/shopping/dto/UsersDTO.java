package com.hardCarry.shopping.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class UsersDTO {
	@NotNull(message = "이름을 입력해라")
	@Size(min = 0, max = 3, message = "이름의 길이가 초과됨")
	String name;
	@NotNull(message = "아이디를 입력해라")
	String id;
	@NotNull(message = "패스워드를 입력해라")
	String pw;
	@NotNull(message = "폰 번호를 입력해라")
	String phone;
	@NotNull(message = "이메일을 입력해라")
	String email;
	@NotNull(message = "주소를 입력해라")
	String address;
}
