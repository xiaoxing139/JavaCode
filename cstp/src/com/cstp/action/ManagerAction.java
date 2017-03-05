package com.cstp.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cstp.model.user.Manager;
import com.cstp.service.ManagerService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class ManagerAction extends BaseAction implements ModelDriven<Manager>{

	private Manager manager=new Manager();
	@Autowired
	private ManagerService managerService;
	
	public String login(){
		String result = null;
		System.out.println("login:"+manager.getName()+"---"+manager.getPassword());
		List<Manager> list = managerService.login(manager);
		HttpSession session = this.getRequest().getSession();
		if(!list.isEmpty()){
			
			session.setAttribute("uname", manager.getName());
			result="success";
		}else{
			session.setAttribute("error", "您输入的用户名或密码不正确!");
			result="admin";
		}
		return result;
	}

	public String logout(){
		String result;
		HttpSession session = this.getRequest().getSession();
		if(session.getAttribute("uname")!=null){
			session.removeAttribute("uname");
			result="admin";
		}else{
			result="error";
		}
		
		return result; 
	}

	@Override
	public Manager getModel() {
		return manager;
	}
}
