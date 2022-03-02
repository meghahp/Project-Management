package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.RoleBean;
import com.bean.StatusBean;

@Repository
public class StatusDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void insertStatus(StatusBean status) {
		stmt.update("insert into status(statusname) values(?)",status.getStatusName());
	}   
	public List<StatusBean> getAllStatus(){
		List<StatusBean> status=stmt.query("select * from status", new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		return status;
	}
	public void deleteStatus(int statusId) {
		stmt.update("delete from status where statusid = ?", statusId);
	}
	
	public StatusBean getStatusById(int statusId) {

		StatusBean status = stmt.queryForObject("select *  from status where statusid = ? ",
				new BeanPropertyRowMapper<StatusBean>(StatusBean.class), new Object[] { statusId });

		return status;
	}
	
	public void updateStatus(StatusBean status) {
		stmt.update("update status set statusname = ? where statusid = ? ", status.getStatusName(), status.getStatusId());
	}

}
