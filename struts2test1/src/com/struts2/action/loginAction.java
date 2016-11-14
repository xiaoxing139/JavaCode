package com.struts2.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;

import com.opensymphony.xwork2.ActionContext;

public class loginAction{

	private User user=new User();
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpServletResponse response = ServletActionContext.getResponse();
	public loginAction(){
		System.out.println("constructor");
	}
	
	public String login(){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("用户："+user.getName()+":"+user.getPw()+"登录成功");
		try {
			ActionContext.getContext().getSession().put("uname", new String(user.getName().getBytes("iso-8859-1"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "login";
	}
	
	public String logout(){
		System.out.println("退出成功");
		return "logout";
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
}
