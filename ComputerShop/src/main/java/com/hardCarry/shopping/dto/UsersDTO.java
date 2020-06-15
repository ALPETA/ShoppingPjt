package com.hardCarry.shopping.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

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
	
	@NotEmpty(message = "이름을 입력해 주세요")
	@NotNull(message = "이름을 입력해라")

	String name;
	

	String u_name;

	@NotNull(message = "아이디를 입력해라")

	@NotEmpty(message = "아이디를 입력해 주세요")
	String id;
	

	String u_id;

	@NotNull(message = "패스워드를 입력해라")

	@NotEmpty(message = "비밀번호를 입력해 주세요")
	String pw;
	
	@NotNull(message = "패스워드를 입력해라")
	@NotEmpty(message = "비밀번호 확인을 위해 한번 더 입력해 주세요")
	String pwCh;
	

	String u_pw;

	@NotNull(message = "폰 번호를 입력해라")

	@NotEmpty(message = "전화번호를 입력해 주세요")
	String phone;
	

	String u_phone;

	@NotNull(message = "이메일을 입력해라")

	@NotEmpty(message = "이메일을 입력해 주세요")
	@Email(message = "이메일 양식이 아닙니다.")
	String email;
	

	String u_email;

	@NotNull(message = "주소를 입력해라")

	@NotEmpty(message = "주소를 입력해 주세요")
	String u_address;
	
	@NotNull(message = "상세주소를 입력해라")
	@NotEmpty(message = "상세주소를 입력해 주세요")
	String u_exaddress;
	
	@Override public String toString() { return "UserDTO [u_name=" + name + ", u_id=" + id + 
			", u_pw=" + pw + ", u_phone=" + phone + ", u_email=" + email +
			", u_address=" + u_address+u_exaddress + "]"; }



}
