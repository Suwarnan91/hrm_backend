package com.sgic.hrm.profile.service;

import java.util.List;

import com.sgic.hrm.commons.entity.User;



public interface UserService {
	public boolean addUser(User user);
	List<User> getUser();
	boolean editUser(User user,Integer id);
	
	boolean deleteUser(Integer id);
	public User findByUserId(Integer id);
	public User findByUserName(String fullName);
}
