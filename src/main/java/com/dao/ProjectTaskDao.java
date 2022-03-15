package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectTaskBean;

@Repository
public class ProjectTaskDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void addTask(ProjectTaskBean task) 
	{
		stmt.update("insert into Task(moduleid,projectid,title,priority,description,statusid,totalminutes) values(?,?,?,?,?,?,?)" ,task.getModuleId(),task.getProjectId(),task.getTitle(),task.getPriority(),task.getDescription(),task.getStatusId(),task.getTotalMinutes());
	}
	public List<ProjectTaskBean> getAllTask()
	{
		return stmt.query("select t.*,p.projecttitle,s.statusname,pm.modulename from task t,project p,status s,projectmodule pm where t.moduleid=pm.moduleid and pm.projectid = p.projectid and p.statusid = s.statusid",new BeanPropertyRowMapper<ProjectTaskBean>(ProjectTaskBean.class));
	}
	public void deleteTask(int taskId)
	{
		stmt.update("delete from task where taskid=?", taskId);
	}
	public ProjectTaskBean getTaskById(int taskId) 
	{
		ProjectTaskBean task = stmt.queryForObject("select * from task where taskid = ?",
				new BeanPropertyRowMapper<ProjectTaskBean>(ProjectTaskBean.class), new Object[] { taskId });
		return task;
	}
	public void updateTask(ProjectTaskBean task) {
		stmt.update("update task set title=?,priority=?,description=?,totalminutes=?  where taskid=? ",
				task.getTitle(), task.getPriority(), task.getDescription(), task.getTotalMinutes(), task.getTaskId());
	}

}
