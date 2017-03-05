package com.cstp.action.product;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.catalina.core.ApplicationPart;
import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.cstp.action.BaseAction;
import com.cstp.model.product.Category;
import com.cstp.model.product.Product;
import com.cstp.model.user.User;
import com.cstp.service.product.CategoryService;
import com.cstp.service.product.ProductService;
import com.cstp.util.UUString;

@Controller
public class ProductAction extends BaseAction {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	public String find() {
		// productService.find(id);
		return "addproduct";
	}

	public String add() {

		HttpServletRequest request = this.getRequest();
		Product product = new Product();
		Category cate = new Category();
		UUString uuid = new UUString();

		User user = (User) request.getSession().getAttribute("user");
		product.setIdentifier(uuid.getProductIdentifier());

		String path = ServletActionContext.getServletContext().getRealPath("/")
				+ "upLoadImage\\";
		System.out.println(user);
		String imgPath = path + uuid.getPictureIdentifier();
		product.setImgPath(imgPath);
		product.setOwner(user);

		try {
			for(Part p : request.getParts()){
				String name = p.getName();
				InputStream is = p.getInputStream();
				if(name.equals("image")){
					ApplicationPart ap = (ApplicationPart)p;
					String fileName = ap.getSubmittedFileName();
					String fileType = fileName.substring(fileName.indexOf("."));
					p.write(imgPath+fileType);
				}else{
					String value = IOUtils.toString(is, "UTF-8");
					if(name.equals("parent")){
						cate.setParent(value);
					}
					if(name.equals("category")){
						cate.setName(value);
					}
					if(name.equals("name")){
						product.setName(value);
					}
					if(name.equals("price")){
						product.setPrice(Integer.valueOf(value));
					}if(name.equals("inventory")){
						product.setInventory(Integer.valueOf(value));
					}
				}
			}
			List<Category> list = categoryService.findByName(cate.getParent(), cate.getName());
			if(!list.isEmpty()){
				System.out.println(list.get(0).getId());
				product.setpCategory(list.get(0));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		productService.add(product);
		return null;
	}
	
}
