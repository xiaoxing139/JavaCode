package com.cstp.dao;

import java.util.List;

import org.junit.Test;
import org.springframework.stereotype.Repository;

import com.cstp.model.user.Manager;

@Repository(value="managerDao")
public class ManagerDao extends BaseDao{

	
	public List<Manager> login(Manager manager){
		
		String queryString = "from Manager as manager where manager.name=? and manager.password=?";
		String []  values = new String[]{manager.getName(),manager.getPassword()};
		List<Manager> clist=getHibernateTemplate().find(queryString, values);
		return clist;
	}
}
