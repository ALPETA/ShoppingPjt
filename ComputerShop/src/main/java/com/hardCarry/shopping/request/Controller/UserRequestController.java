package com.hardCarry.shopping.request.Controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.service.UserService;

@Controller
public class UserRequestController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public String sigupOk(@ModelAttribute @Valid UsersDTO user, BindingResult errors) {
		if (errors.hasErrors()) {
			List<ObjectError> allErrors = errors.getAllErrors();
			allErrors.forEach(c -> {
				System.out.println(c.getDefaultMessage());
			});
			return "./";
		}
		UsersEntity saveUser = userService.save(user);
		return "redirect:";
	}
}
