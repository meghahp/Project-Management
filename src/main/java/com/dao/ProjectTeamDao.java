package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectBean;
import com.bean.ProjectTeamBean;
import com.bean.UserBean;

@Repository
public class ProjectTeamDao {
	
	@Autowired
	JdbcTemplate stmt;
	public List<ProjectTeamBean> getTeamMembers(int projectId){
		return stmt.query(" select pt.*,u.*,p.projecttitle,r.rolename from projectteam pt,users u,role r,project p  where pt.projectid = ?  and u.userid = pt.userid and r.roleid = u.roleid and p.projectid = pt.projectid", new BeanPropertyRowMapper<ProjectTeamBean>(ProjectTeamBean.class),new Object[] {projectId}); 
	}
	public List<UserBean> getUsersForProject(int projectId) {
		return stmt.query(
				"select * from users where roleid in ( 17, 18 ) and userid not in (select userid from projectteam where projectid = ? )",
				new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { projectId });

	}
	public void addTeamMember(int projectId, int userId) {
		stmt.update("insert into projectteam (projectid,userid,active) values (?,?,?) ", projectId, userId, 1);
	}
	public void removeTeamMember(int projectId, int userId) {
		stmt.update("update projectteam set active = 0 where userid = ? and projectid = ? ",userId,projectId);
	}
	public List<ProjectBean> getProjectByUserId(int userId){
		return stmt.query("select * from project where projectid in (select projectid from projectteam where userid = ? and active = 1  )",new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class),new Object[] {userId});
	}
	public void reassignTeamMember(int projectId, int userId) {
		stmt.update("update projectteam set active = 1 where userid = ? and projectid = ? ",userId,projectId);		
	}
} 	
	


