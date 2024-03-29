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
public class ProjectManagerController {
	@Autowired
	ProjectDao projectDao;
	
	@GetMapping("/projectmanagerdashboard")
	public String projectmanagerDashboard(HttpSession session, Model model)
	{
		UserBean user = (UserBean) session.getAttribute("user");
		List<ProjectBean> projects = projectDao.getAllProject();
		
		model.addAttribute("totalProjects", projects.size());

		List<UserBean> Developer = projectDao.getAllDeveloper();
		model.addAttribute("totalDeveloper", Developer.size());

		List<UserBean> projectmanager = projectDao.getAllPm();

		model.addAttribute("totalProjectManager", projectmanager.size());
		
		return "ProjectManagerDashboard";
	}

}
