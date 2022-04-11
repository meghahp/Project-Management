package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ProjectBean;
import com.bean.UserBean;
import com.dao.ModuleDao;
import com.dao.ProjectDao;
import com.dao.RoleDao;
import com.dao.StatusDao;
import com.dao.UserDao;

@Controller
public class AdminController {
	
	@Autowired
	ProjectDao projectDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	UserDao userDao;
	@Autowired
	RoleDao roleDao;
	@Autowired
	ModuleDao moduleDao;
	
	
	@GetMapping("/admindashboard")
	
	public String adminDashboard(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");

			// projects
		 
			List<ProjectBean> projects = projectDao.getAllProject();
			model.addAttribute("projects", projects.size());
			model.addAttribute("projects1", projects);
			
			List<UserBean> Developer = projectDao.getAllDeveloper();
			model.addAttribute("totalDeveloper", Developer.size());
			
			List<UserBean> Projectmanager = projectDao.getAllPm();
			model.addAttribute("totalProjectManager", Projectmanager.size());
		
			return "AdminDashboard";
	}
	
	@GetMapping("/projectreport")
	public String getAllRoles(@RequestParam("statusId") int statusId, Model model) {
		if (statusId == 0) {
			model.addAttribute("project", projectDao.getAllProject());
		}else {
			model.addAttribute("project", projectDao.getAllProjectsByStatus(statusId));
		}
		model.addAttribute("status", statusDao.getAllStatus());
		return "ProjectReport";
	}
	@GetMapping("/userreport")
	public String getAllPerson(@RequestParam("roleId") int roleId,Model model)
	{
		if(roleId==0)
		{
			model.addAttribute("users",userDao.getAllUsers());
		}else {
//			System.out.println("aaaaaa");
			model.addAttribute("users",userDao.getUserByRole(roleId));
		}
		model.addAttribute("role",roleDao.getAllRoles());
		return "UserReport";
	}
	@GetMapping("/modulereport")
	public String getAllModules(@RequestParam("projectId") int projectId,Model model)
	{
		if(projectId==0)
		{
			model.addAttribute("modules",moduleDao.getAllModule());
		}else {
//			System.out.println("aaaaaa");
			model.addAttribute("modules",moduleDao.getAllModuleByProject(projectId));
		}
		model.addAttribute("projects",projectDao.getAllProject());
		return "ModuleReport";
	}
	
}
	


