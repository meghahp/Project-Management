package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectBean;
import com.bean.RoleBean;
import com.bean.UserBean;

@Repository
public class ProjectDao {
	@Autowired
	JdbcTemplate stmt;

	public void insertRole(ProjectBean project) {
		stmt.update(
				"insert into project(projecttitle,description,technology,startdate,enddate,estimatedhours,statusid) values(?,?,?,?,?,?,?)",
				project.getProjectTitle(), project.getDescription(), project.getTechnology(), project.getStartDate(),
				project.getEndDate(), project.getEstimatedHours(), project.getStatusId());
	}

	/*
	 * public List<ProjectBean> getAllProject() { List<ProjectBean> project =
	 * stmt.query("select * from project", new
	 * BeanPropertyRowMapper<ProjectBean>(ProjectBean.class));
	 * System.out.println(project.get(0).getProjectTitle()); return project;
	 */
	//}
	public List<ProjectBean> getAllProject() {
	List<ProjectBean> project=stmt.query("select p.*,s.statusname from project p,status s where p.statusid=s.statusid",new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class));
	return project;
	}
	public List<UserBean> getAllDeveloper() {
		List<UserBean> Developer=stmt.query("select u.* from users u where u.roleid=18",new BeanPropertyRowMapper<UserBean>(UserBean.class));
		return Developer;
	}
	public List<UserBean> getAllPm() {
		List<UserBean> Projectmanager=stmt.query("select u.* from users u where u.roleid=17",new BeanPropertyRowMapper<UserBean>(UserBean.class));
		return Projectmanager;
	}
	public void deleteProject(int projectId) {
		stmt.update("delete from project where projectid = ?", projectId);
	}
	
	public ProjectBean getProjectById(int projectId) {
		try {
			return stmt.queryForObject("select * from project where projectid = ?",new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class),new Object[] {projectId});
		}catch(Exception e) {
			System.out.println("SMW in projectDao  == > getPrjectById()");
		}
		return null;
	}
		
	public void updateProject(ProjectBean project) {
		stmt.update("update project set projecttitle = ?,description= ?,technology= ? where projectid = ? ",
				project.getProjectTitle(),project.getDescription(),project.getTechnology(),project.getProjectId());
	}
	
	
	public List<ProjectBean> getAllProjectsByStatus(int statusId) {
		// TODO Auto-generated method stub
		return stmt.query("select p.*,s.statusname from project p,status s where p.statusid = s.statusid and p.statusid = ? ",
				new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class),new Object[] {statusId});
	}
	
}
