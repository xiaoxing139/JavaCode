package com.struts2.action;

import com.opensymphony.xwork2.Action;

public class Default implements Action{

	@Override
	public String execute() throws Exception {
		System.out.println("deault");
		return Action.SUCCESS;
	}

}
