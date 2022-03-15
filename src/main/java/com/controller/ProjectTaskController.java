package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ModuleBean;
import com.bean.ProjectBean;
import com.bean.ProjectTaskBean;
import com.bean.StatusBean;
import com.dao.ModuleDao;
import com.dao.ProjectDao;
import com.dao.ProjectTaskDao;
import com.dao.StatusDao;

@Controller
public class ProjectTaskController {
	
	@Autowired
	ProjectDao projectDao;
	@Autowired
	ModuleDao moduleDao;
	@Autowired
	StatusDao statusDao;
	
	
	@Autowired
	ProjectTaskDao projecttaskDao;
	
	@GetMapping("/newtask")
	public String newProjectTask(Model model)
	{
		
		List<ProjectBean> project=projectDao.getAllProject();
		List<ModuleBean> module=moduleDao.getAllModule();
		List<StatusBean> status  = statusDao.getAllStatus();
		model.addAttribute("status",status);
		model.addAttribute("project",project);
		model.addAttribute("module",module);
		return "Task";
	}
	
	@PostMapping("/savetask")
	public String saveTask(ProjectTaskBean task) {
		projecttaskDao.addTask(task);
		return "redirect:/listtask";
	}
	
	@GetMapping("listtask")
	public String listTask(Model model)
	{
		List<ProjectTaskBean> task = projecttaskDao.getAllTask();
		model.addAttribute("task",task);
		return "ListTask";
	}
	@GetMapping("/deletetask/{taskId}")
	public String deleteTask(@PathVariable("taskId") int taskId) {
		System.out.println("deleteTask()");

		projecttaskDao.deleteTask(taskId);

		return "redirect:/listtask";
	}
	@GetMapping("/edittask")
	public String editTask(@RequestParam("taskId") int taskId, Model model) {

		ProjectTaskBean task = projecttaskDao.getTaskById(taskId);
		System.out.println(task.getTaskId());
		model.addAttribute("task", task);
		return "EditTask";

	}
	@PostMapping("/updatetask")
	public String updateTask(ProjectTaskBean task) {
		projecttaskDao.updateTask(task);
		return "redirect:/listtask";
	}
	
}
