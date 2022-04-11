
package com.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.ForgetBean;
import com.bean.LoginBean;
import com.bean.UserBean;
import com.dao.UserDao;
import com.service.EmailService;
@Controller
public class Sessioncontroller {
	
	@Autowired
	UserDao userDao;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	EmailService emailService;
	
	@RequestMapping(value = "signup",method = RequestMethod.GET)
	public String signup() {
		System.out.println("i am in signup");
		return "Signup";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login2() {
		return "redirect:/login";
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
	
	/*@RequestMapping(value = "forgetpassword",method = RequestMethod.POST)
	public String forgetPassword(ForgetBean user) {
		System.out.println(user.getEmail());
		return "Login";
	}*/
	@PostMapping("/forgetpassword")
	public String forgetPassword(UserBean user, Model model, HttpSession session) {
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());

		if (dbUser == null) {
			model.addAttribute("error", "Please Enter Valid Email");
			return "ForgetPassword";

		} else {
			int otp = (int) (Math.random() * 1000000); // 0325842.15621 * 1000000
			session.setAttribute("otp", otp);
			session.setAttribute("email", user.getEmail());
			model.addAttribute("msg", "Otp is generated and sent to your email!!!");
			System.out.println("your otp is => " + otp);
			/// send email to user
			emailService.SendEmailForForgetPassword(user.getEmail(), otp + "");	
			return "NewPassword";
		}
	}
	@PostMapping("/updatepassword")
	public String updatePassword(UserBean user, HttpSession session,Model model) {
		int otp = (int) session.getAttribute("otp");
		String email = (String) session.getAttribute("email");

		if (otp == user.getOtp() && email.equalsIgnoreCase(user.getEmail())) {

			String encPassword = bcryptPasswordEncoder.encode(user.getPassword()); 
			user.setPassword(encPassword);


			userDao.updatePassword(user);

			model.addAttribute("msg","Password Modified Please Login");
			return "Login";
		}else {
			model.addAttribute("error","You data mismatch with our records!!!");
			return "NewPassword";
		}
	}
	

	
	@PostMapping("/saveuser")
	public String authenticate(UserBean user,Model model,HttpSession session) {

		boolean isCorrect = false;
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());
		if (dbUser != null) {

			if (bcryptPasswordEncoder.matches(user.getPassword(), dbUser.getPassword()) == true) {
				isCorrect = true;
				session.setAttribute("user", dbUser);
			}
		}

		if (isCorrect == true) {
			//admin  AdminDashBoard 
			//project manager 
			//developer
				if(dbUser.getRoleId()==16)
				{
					return "redirect:/admindashboard";
				}
				else if(dbUser.getRoleId()==17)
				{
					return "redirect:/projectmanagerdashboard";
				}
				else if(dbUser.getRoleId()==18)
				{
					return "redirect:/developerdashboard";
				}
				else
				{
					return "Home";
				}
			
		
		}else {
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		}
	}
	
	
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String login(LoginBean user) {
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";
	}
	
	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	

}
