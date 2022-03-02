package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.RoleBean;
import com.bean.StatusBean;
import com.dao.StatusDao;


@Controller
public class StatusController {
	@Autowired
	StatusDao statusDao;
	
	@GetMapping("/newstatus")
	public String newStatus() {
		return "NewStatus";
	}
	@PostMapping("/savestatus")
	public String saveStatus(StatusBean status) {
		System.out.println(status.getStatusName());
		statusDao.insertStatus(status);
		return "redirect:/liststatus";
	}
	@GetMapping("/liststatus")
	public String listStatus(Model model) {
		List<StatusBean> status=statusDao.getAllStatus();
		model.addAttribute("status",status);
		return "ListStatus";
	}
	@GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId") int statusId) {
		System.out.println("deleteStatus()");

		statusDao.deleteStatus(statusId);

		return "redirect:/liststatus";
	}
	
	@GetMapping("/editstatus")
	public String editStatus(@RequestParam("statusId") int statusId, Model model) {

		StatusBean status = statusDao.getStatusById(statusId);
		model.addAttribute("status", status);
		return "EditStatus";

	}
	
	@PostMapping("/updatestatus")
	public String updateStatus(StatusBean status) {
		statusDao.updateStatus(status);
		return "redirect:/liststatus";
	}

}
