package com.cstp.action.user;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cstp.action.BaseAction;
import com.cstp.model.user.User;
import com.cstp.service.user.UserService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class UserAction extends BaseAction implements ModelDriven<User>{
 
	private User user = new User();
	@Autowired
	private UserService userService;
	
	
	//注册
	public String register(){
		System.out.println("useraction");
		System.out.println(user.getEmail());
		HttpServletRequest request = this.getRequest();
		userService.register(user);
		request.getSession().setAttribute("uname", user.getEmail());
		return "person";
	}
	
	//登录
	public String login(){
		
		String result = null;
		HttpServletRequest request = this.getRequest();
		String email = (String) request.getAttribute("email");
		String pwd = (String) request.getAttribute("password");
		System.out.println(email+"----"+pwd);
		boolean b = userService.login(email, pwd);
		if(b){
			request.getSession().setAttribute("uname", email);
			result = "person";
		}else{
			request.getSession().setAttribute("error", "用户名或密码错误!");
			result = "login";
		}
		return result;
	}
	
	//退出
	public String logout(){
		 
		this.getRequest().getSession().setAttribute("uname", null);
		return "login";
	}
	
	//查询用户信息
	public String find(){
		
		HttpServletRequest request = this.getRequest();
		String email = (String) request.getSession().getAttribute("uname");
		User user = userService.find(email);
		request.getSession().setAttribute("user", user);
		return "inform";
	}
	
	//修改用户信息
	public String updateInfo(){
		
		HttpServletRequest request = this.getRequest();
		User u = (User) request.getSession().getAttribute("user");
		System.out.println(u.getId()+":"+u.getEmail()+":"+u.getNickname());
		u.setNickname((String) request.getAttribute("nickname"));
		u.setSex((String) request.getAttribute("sex"));
		u.setBirthday((Date) request.getAttribute("birthday"));
		u.setIdcard((String) request.getAttribute("idcard"));
		
		userService.update(u);
		return "find";
	}
	
	@Override
	public User getModel() {
		return user;
	}
}
