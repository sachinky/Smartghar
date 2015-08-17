package com.dao;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.pojo.Cook;
import com.pojo.User;

public class UserDaoImpl implements UserDao
{
	
	private JdbcTemplate jdbcTemplate;

	public UserDaoImpl(){
		
	}
	public UserDaoImpl(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public void add(User user) {
		String sql="insert into usersignup(userName,password,name,email,phone) values(?,?,?,?,?)";
		jdbcTemplate.update(sql,user.getUsername(),user.getPassword(),user.getName(),user.getEmail(),user.getPhone());
		String sql1 = "insert into login(userName,password,flag) values(?,?,?)";
		jdbcTemplate.update(sql1,user.getUsername(),user.getPassword(),0);
	}
	
	public String getPassword(String username)
	{
		
		String sql = "select password from login where userName=?";
		String result;
		try{
			result = jdbcTemplate.queryForObject(sql, new Object[]{username}, String.class);
		}
		catch(DataAccessException e)
		{
			result = "null";
		}
		return result;
	}
}