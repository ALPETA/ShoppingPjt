package com.hardCarry.shopping.dto;

import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UsersDTO {
	@NotNull(message = "이름을 입력해라")
	String u_name;
	@NotNull(message = "아이디를 입력해라")
	String u_id;
	@NotNull(message = "패스워드를 입력해라")
	String u_pw;
	@NotNull(message = "폰 번호를 입력해라")
	String u_phone;
	@NotNull(message = "이메일을 입력해라")
	String u_email;
	@NotNull(message = "주소를 입력해라")
	String u_address;
	String u_createDate;
	@Override public String toString() { return "UserDTO [u_name=" + u_name + ", u_id=" + u_id + 
			", u_pw=" + u_pw + ", u_phone=" + u_phone + ", u_email=" + u_email +
			", u_address=" + u_address + "]"; }

}
