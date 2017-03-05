package com.cstp.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cstp.dao.user.UserDao;
import com.cstp.model.user.User;

@Service("userService")
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void register(User user){
		userDao.register(user);
	}
	
	public boolean login(String email, String pwd){
		
		boolean b = false;
		List<User> list = userDao.login(email, pwd);
		if( list.size()==1 ){
			b = true;
		}
		return b;
	}
	
	public User find(String email){
		
		List<User> list = userDao.find(email);
		return list.get(0);
	}
	
	public void update(User user){
		
		userDao.update(user);
		
	}
}
