package com.hardCarry.shopping.request.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hardCarry.shopping.dto.UsersDTO;
import com.hardCarry.shopping.entity.UsersEntity;
import com.hardCarry.shopping.service.UserService;

@Controller
public class UserRequestController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public String signup(@Valid UsersDTO user, BindingResult errors) {
		if (errors.hasErrors()) {
			return "signUp";
		}
		UsersEntity saveUser = userService.save(user);
		return "redirect:index.do";
	}

	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String signupPage(@Valid UsersDTO user, BindingResult errors) {
		return "signUp";
	}

	@RequestMapping(value = "dupId", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody boolean dupId(String id) {
		return userService.dupId(id);
	}

	@RequestMapping(value = "pwChk", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody boolean pwChk(String id, String pw) {
		System.out.println("컨트롤러");
		return userService.pwChk(id, pw);
	}

	@RequestMapping(value = "userSetting.do", method = RequestMethod.POST)
	public String userSettingPage(@Valid UsersDTO user, BindingResult errors) {
		return "userSetting";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<?> login(@RequestParam(required = true) String id,
			@RequestParam(required = true) String pw, HttpSession session) {
		UsersEntity user;
		try {
			user = userService.login(id, pw);
			session.setAttribute("user", user);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
		return ResponseEntity.ok(user);
	}

	@RequestMapping(value = "Adminlogin", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<?> Adminlogin(@RequestParam(required = true) String id,
			@RequestParam(required = true) String pw, HttpSession session) {
		UsersEntity user;
		try {
			user = userService.login(id, pw);
			if(user.getU_auth().equals("USER")) {
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
			}
			session.setAttribute("admin", user);
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
		return ResponseEntity.ok(user);
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:./index.do";
	}

	@RequestMapping(value = "Adminlogout", method = RequestMethod.GET)
	public String Adminlogout(HttpSession session) {
		session.invalidate();
		return "redirect:./logmain.do";
	}

	@RequestMapping(value = "updateUser", method = RequestMethod.GET) // 사용자 정보 수정
	public String updateUser(Model model, UsersEntity usersEntity, HttpServletRequest request, HttpSession session) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		usersEntity.setU_name(name);
		usersEntity.setU_id(id);
		usersEntity.setU_pw(pw);
		usersEntity.setU_phone(phone);
		usersEntity.setU_email(email);
		usersEntity.setU_address(address);
		userService.updateUser(usersEntity);
		session.setAttribute("user", usersEntity);
		return "redirect:./userSetting.do";
	}

	@RequestMapping(value = "updateUserPW", method = RequestMethod.GET) // 사용자 정보 수정
	public String updateUserPW(Model model, UsersEntity usersEntity, HttpServletRequest request, HttpSession session) {
		String id = request.getParameter("id");
		String newpassword = request.getParameter("newpassword");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		usersEntity.setU_name(name);
		usersEntity.setU_id(id);
		usersEntity.setU_pw(newpassword);
		usersEntity.setU_phone(phone);
		usersEntity.setU_email(email);
		usersEntity.setU_address(address);
		userService.updateUserPW(usersEntity);
		session.setAttribute("user", usersEntity);
		return "redirect:./userSetting.do";
	}

	@RequestMapping(value = "searchIdHandle", method = RequestMethod.POST)
	public @ResponseBody HashMap<?, ?> findId(@RequestParam(defaultValue = "") String name,
			@RequestParam(defaultValue = "") String email) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<UsersEntity> list = userService.findId(name, email);
		result.put("data", list);
		return result;
	}

	@RequestMapping(value = "getNewPwHandle", method = RequestMethod.POST)
	public @ResponseBody HashMap<?, ?> getNewPwHandle(@RequestParam(defaultValue = "") String id,
			@RequestParam(defaultValue = "") String email) {
		Random random = new Random();
		int code = 0;
		while(true){
			code = random.nextInt();
			if(code>0) {
				break;
			}
		}
		String new_pw = String.valueOf(code);
		userService.setNewPw(id, email, new_pw);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<UsersEntity> list = userService.findPw(id, email);
		result.put("data", list);
		return result;
	}

}
