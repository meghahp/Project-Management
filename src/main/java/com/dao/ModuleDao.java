package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ModuleBean;
import com.bean.ProjectBean;
import com.bean.UserBean;

@Repository
public class ModuleDao {
	@Autowired
	JdbcTemplate stmt;

	public void addModule(ModuleBean module) {
		// TODO Auto-generated method stub
		stmt.update(
				"insert into projectmodule(projectid,modulename,description,startdate,estimatedhours,status) values(?,?,?,?,?,?)",
				module.getProjectId(), module.getModuleName(), module.getDescription(), module.getStartDate(),
				module.getEstimatedHours(), module.getStatusName());

	}

	public List<ModuleBean> getAllModule() {
		List<ModuleBean> module = stmt.query(
				"select pm.*,s.statusname,p.projecttitle from projectmodule pm,status s,project p where pm.projectid=p.projectid and p.statusid=s.statusid",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class));
		return module;
	}

	public void deleteModule(int moduleId) {
		stmt.update("delete from projectmodule where moduleid = ?", moduleId);
	}

	public ModuleBean getModuleById(int moduleId) {

		ModuleBean module = stmt.queryForObject("select *  from projectmodule where moduleid = ? ",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class), new Object[] { moduleId });

		return module;
	}

	public void updateModule(ModuleBean module) {
		stmt.update("update projectmodule set modulename = ?,description = ?,status = ? where moduleid = ? ",
				module.getModuleName(), module.getDescription(), module.getStatus(), module.getModuleId());
	}

	public List<ModuleBean> getAllModuleByProject(int projectId) {
		return stmt.query(
				"select pm.*,p.projecttitle from projectmodule pm,project p where pm.projectid=p.projectid and p.projectid=?",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class), new Object[] { projectId });
	}

}
