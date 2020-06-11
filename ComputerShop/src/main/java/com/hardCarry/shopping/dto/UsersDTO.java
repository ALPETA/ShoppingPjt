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
	@Override public String toString() { return "UserDTO [u_name=" + name + ", u_id=" + id + 
			", u_pw=" + pw + ", u_phone=" + phone + ", u_email=" + email +
			", u_address=" + address + "]"; }

}
