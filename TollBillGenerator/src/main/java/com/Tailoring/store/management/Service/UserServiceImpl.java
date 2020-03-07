package com.Tailoring.store.management.Service;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.Tailoring.store.management.Model.LoginUser;
import com.Tailoring.store.management.Model.User;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	public boolean addUser(User user) {

		String sql = "insert into user(role_id, Name, DOB, Mobile_no) values(?,?,?,?)";
		try {
		jdbcTemplate.update(sql,2,user.getUser_name(),user.getDateOfBirth(),user.getMobile_no());
			
		String sql2 = "select max(user_id) from user";
		
		int id =  jdbcTemplate.queryForObject(sql2, Integer.class);
		
		sql2 = "insert into credentials values (?, ?, ?)";
		jdbcTemplate.update(sql2,user.getEmail_id(),id,user.getPassword());
		
		
		} catch (Exception e) {
			String sql2 = "select max(user_id) from user";
			int id = jdbcTemplate.queryForObject(sql2, Integer.class);
			String rollback = "delete from user where user_id = ?";
			jdbcTemplate.update(rollback, id);
			
			return false;
		}
		return true;
	}


	@Override
	public boolean isUser(LoginUser user) {
		// TODO Auto-generated method stub
		user.getEmail_id();
		if("abc".equals(user.getEmail_id()))
		{
			
			return true;
		}
		return false;
	}
	

}
