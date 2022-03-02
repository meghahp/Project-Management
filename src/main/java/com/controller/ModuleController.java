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
import com.bean.UserBean;
import com.dao.ModuleDao;
import com.dao.ProjectDao;
import com.dao.RoleDao;

@Controller
public class ModuleController {
	@Autowired
	ModuleDao moduleDao;
	@Autowired
	ProjectDao projectDao;
	
	
	@GetMapping("/newmodule")
	public String newModule(Model model ) {
		List<ProjectBean> project=projectDao.getAllProject();
		model.addAttribute("project",project);
		return  "NewModule";
	}
@PostMapping("/savemodule")
	
	public String saveModule(ModuleBean module) {
		moduleDao.addModule(module);
		return "redirect:/getallmodule";
	}
@GetMapping("/getallmodule")
public String getAllModule(Model model)
{
	List<ModuleBean> module =  moduleDao.getAllModule();
	model.addAttribute("module",module);
	return "ListModule";
}
@GetMapping("/deletemodule/{moduleId}")
public String deleteModule(@PathVariable("moduleId") int moduleId) {
	System.out.println("deleteModule()");

	moduleDao.deleteModule(moduleId);

	return "redirect:/getallmodule";
}
@GetMapping("/editmodule")
public String editModule(@RequestParam("moduleId") int moduleId, Model model) {

	ModuleBean module = moduleDao.getModuleById(moduleId);
	System.out.println(module.getModuleId());
	model.addAttribute("module", module);
	return "EditModule";

}

@PostMapping("/updatemodule")
public String updateModule(ModuleBean module) {
	moduleDao.updateModule(module);
	return "redirect:/getallmodule";
}


}
