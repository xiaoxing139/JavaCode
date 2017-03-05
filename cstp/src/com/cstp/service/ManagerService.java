package com.cstp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cstp.dao.ManagerDao;
import com.cstp.model.user.Manager;

@Service("managerService")
public class ManagerService {
	@Autowired
	private ManagerDao managerDao;
	
	//π‹¿Ì‘±µ«¬º
	public List<Manager> login(Manager manager){
		return managerDao.login(manager);
	}

	public ManagerDao getMdao() {
		return managerDao;
	}

	public void setMdao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}
	
}
