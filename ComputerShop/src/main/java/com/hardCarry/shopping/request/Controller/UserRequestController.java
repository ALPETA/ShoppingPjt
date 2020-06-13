package com.hardCarry.shopping.request.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.service.UserService;

@Controller
public class UserRequestController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public String signupOk(@Valid UsersDTO user, BindingResult errors) {
		if (errors.hasErrors()) {
			return "signUp";
		}
		UsersEntity saveUser = userService.save(user);
		return "redirect:saveUser";
	}

	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String signupPage(@Valid UsersDTO user, BindingResult errors) {
		return "signUp";
	}

	@RequestMapping(value = "dupId", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody boolean dupId(String id) {
		return userService.dupId(id);
	}
}
