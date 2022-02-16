package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.ForgetBean;
import com.bean.LoginBean;
import com.bean.UserBean;
@Controller
public class Sessioncontroller {
	
	@RequestMapping(value = "signup",method = RequestMethod.GET)
	public String signup() {
		System.out.println("i am in signup");
		return "Signup";
	}
	@RequestMapping(value = "login",method = RequestMethod.GET)
	public String login() {
		System.out.println("i am in login");
		return "Login";
	}
	@RequestMapping(value = "forgetpassword",method = RequestMethod.GET)
	public String forgetpassword() {
		System.out.println("i am in forgetpassword");
		return "ForgetPassword";
	}
	@RequestMapping(value = "saveuser",method = RequestMethod.POST)
	public String saveUser(UserBean user) {
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";
	}
	
	@RequestMapping(value = "forgetpassword",method = RequestMethod.POST)
	public String forgetPassword(ForgetBean user) {
		System.out.println(user.getEmail());
		return "Login";
	}
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String login(LoginBean user) {
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";
	}
	

}
