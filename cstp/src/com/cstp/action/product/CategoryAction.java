package com.cstp.action.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cstp.action.BaseAction;
import com.cstp.service.product.CategoryService;

@Controller
public class CategoryAction extends BaseAction{

	@Autowired
	private CategoryService categoryService;
	
	
	public String search(){
		System.out.println("search()");
		String result=null;
		findbase();
		return "index";
	}
	
	
	public String find(){
		String result=null;
		findbase();
		return "category";
	}
	
	public void findbase(){
		Map< String, String> categoryMap = categoryService.find();
		
		/*String json = JSON.toJSONString(categoryMap);
		String js = json.replaceAll("[{ } \"]","");
		System.out.println(js);*/
		HttpSession session = this.getRequest().getSession();
		session.setAttribute("categoryMap", categoryMap);
	}
	
	public String save(){
		HttpServletRequest request = this.getRequest();
		String pcategory = request.getParameter("pcategory");
		String category = request.getParameter("category");
		categoryService.update(pcategory,category);
		return "category";
	}
	
	public String del(){
		HttpServletRequest request = this.getRequest();
		String pcategory = request.getParameter("pcategory");
		String category = request.getParameter("category");
		categoryService.del(pcategory, category);
		return "category";
	}
}
