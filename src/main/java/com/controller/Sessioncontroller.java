package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	

}
