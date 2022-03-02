package com.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ProjectBean;
import com.bean.StatusBean;
import com.bean.UserBean;
import com.dao.ProjectDao;
import com.dao.StatusDao;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectDao projectDao;
	@Autowired
	StatusDao statusDao;

	@GetMapping("/newproject")
	public String newRole(Model model) {
		List<StatusBean> status= statusDao.getAllStatus();
		model.addAttribute("status",status);
		return "NewProject";
	}
	@PostMapping("/saveproject")
	public String saveProject(ProjectBean project) {
		projectDao.insertRole(project);
		return "redirect:/listproject";
	}
	@GetMapping("/listproject")
	public String listproject(Model model) {
		List<ProjectBean> project=projectDao.getAllProject();
		model.addAttribute("project",project);
		return "ListProject";
	}
	@GetMapping("/deleteproject/{projectId}")
	public String deleteProject(@PathVariable("projectId") int projectId) {
		System.out.println("deleteProject()");

		projectDao.deleteProject(projectId);

		return "redirect:/listproject";
	}
	@GetMapping("/editproject")
	public String editProject(@RequestParam("projectId") int projectId, Model model) {

		ProjectBean project = projectDao.getProjectById(projectId);
		System.out.println(project.getProjectId());
		model.addAttribute("project", project);
		return "EditProject";

	}
	
	@PostMapping("/updateproject")
	public String updateProject(ProjectBean project) {
		projectDao.updateProject(project);
		return "redirect:/listproject";
	}
	
	
}
