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
import com.dao.ProjectTeamDao;

@Controller
public class DeveloperController {
	@Autowired
	ProjectTeamDao projectteamDao;
	
	@GetMapping("/developerdashboard")
	public String daveloperDashboard(HttpSession session, Model model)
	{
		UserBean user = (UserBean) session.getAttribute("user");
			// projects

		List<ProjectBean> projects = projectteamDao.getProjectByUserId(user.getUserId());
		model.addAttribute("totalDeveloper", projects.size());
		return "DeveloperDashboard";
	}

}
