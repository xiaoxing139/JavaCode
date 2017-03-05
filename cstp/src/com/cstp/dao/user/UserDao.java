package com.cstp.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cstp.dao.BaseDao;
import com.cstp.model.user.User;

@Repository(value="userDao")
public class UserDao extends BaseDao{

	public void register(User user){
		this.getHibernateTemplate().persist(user);
	}
	
	public List<User> login(String email, String pwd){
		
		String hql = "from User as user where user.email=? and user.password=?";
		String [] values = new String[]{email,pwd};
		List<User> list = this.getHibernateTemplate().find(hql, values);
		return list;
	}
	
	public List<User> find(String email){
		
		String hql = "from User as user where user.email=?";
		List<User> list = this.getHibernateTemplate().find(hql, email);
		return list;
	}
	
	public void update(User user){
		this.getHibernateTemplate().update(user);
	}
}
