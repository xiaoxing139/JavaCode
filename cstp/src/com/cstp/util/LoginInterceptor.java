package com.cstp.util;

/**
 *  µÇÂ¼À¹½ØÆ÷ 
 */
import javax.servlet.ServletRequestWrapper;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.cstp.action.BaseAction;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String uname = (String) request.getSession().getAttribute("uname");
		if( uname == null){
			String servletPath = request.getServletPath();
			String path = servletPath.substring( 0, servletPath.lastIndexOf("/"));
			if(path.equals("/controller")){
				return "admin";
			}else if(path.equals("/user")){
				return "login";
			}
		}
		return invocation.invoke();
	}

}
