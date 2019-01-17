package org.shop.service.impl;



import org.shop.dao.UserDao;

import org.shop.pojo.User;
import org.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao UserService;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return UserService.login(user);
	}

	@Override
	public int touser(User user) {
		// TODO Auto-generated method stub
		return UserService.touser(user);
	}

	@Override
	public List findall(User user ) {
		// TODO Auto-generated method stub
		return UserService.findall(user);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return UserService.delete(id);
	}

	@Override
	public User findid(int id) {
		// TODO Auto-generated method stub
		return UserService.findid(id);
	}

	@Override
	public int userup(User user) {
		// TODO Auto-generated method stub
		return UserService.userup(user);
	}

	
	
}
