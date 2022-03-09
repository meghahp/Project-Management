package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.ProjectBean;
import com.bean.UserBean;
import com.dao.ProjectDao;

@Controller
public class AdminController {
	
	@Autowired
	ProjectDao projectDao;
	
	@GetMapping("/admindashboard")
	
	public String adminDashboard(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");

			// projects

			List<ProjectBean> projects = projectDao.getAllProject();
			model.addAttribute("totalProjects", projects.size());
		
			return "AdminDashboard";
	}
	}
	


